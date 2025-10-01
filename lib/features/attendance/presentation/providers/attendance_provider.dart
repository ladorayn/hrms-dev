import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hrms_mobile/core/constants/attendance_enum.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/core/network/dio_provider.dart';
import 'package:hrms_mobile/features/attendance/data/data_sources/attendance_local_source.dart';
import 'package:hrms_mobile/features/attendance/data/data_sources/attendance_remote_source.dart';
import 'package:hrms_mobile/features/attendance/data/models/request/clock_in/clock_in_request_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/request/clock_out/clock_out_request_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/activity_log/activity_log_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/attendance/attendance_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/attendance_mapper.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/detail_attendance/attendance_detail_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/shifts_response_model.dart';
import 'package:hrms_mobile/features/attendance/data/repositories/attendance_repository_impl.dart';
import 'package:hrms_mobile/features/attendance/domain/entities/attendance.dart';
import 'package:hrms_mobile/features/attendance/domain/usecases/clock_in_usecase.dart';
import 'package:hrms_mobile/features/attendance/domain/usecases/clock_out_usecase.dart';
import 'package:hrms_mobile/features/attendance/domain/usecases/get_attendance_history_usecase.dart';
import 'package:hrms_mobile/features/attendance/domain/usecases/get_shifts_usecase.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth/auth_provider.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'attendance_state.dart';

part 'attendance_provider.g.dart';

final attendanceLocalSourceProvider = Provider<AttendanceLocalSource>((ref) {
  return AttendanceLocalSource();
});

final attendanceRemoteSourceProvider = Provider<AttendanceRemoteSource>((ref) {
  final dio = ref.watch(dioProvider);
  return AttendanceRemoteSource(dio);
});

final attendanceRepoProvider = Provider<AttendanceRepositoryImpl>((ref) {
  final localSource = ref.watch(attendanceLocalSourceProvider);
  final remoteSource = ref.watch(attendanceRemoteSourceProvider);
  return AttendanceRepositoryImpl(
    localSource: localSource,
    remoteSource: remoteSource,
  );
});

final clockInUseCaseProvider =
    Provider((ref) => ClockInUseCase(ref.watch(attendanceRepoProvider)));
final clockOutUseCaseProvider =
    Provider((ref) => ClockOutUseCase(ref.watch(attendanceRepoProvider)));
final getHistoryUseCaseProvider = Provider(
    (ref) => GetAttendanceHistoryUseCase(ref.watch(attendanceRepoProvider)));

final getShiftsUseCaseProvider =
    Provider((ref) => GetShiftsUseCase(ref.watch(attendanceRepoProvider)));

@Riverpod(keepAlive: true)
class Attendance extends _$Attendance {
  @override
  AttendanceState build() {
    return const AttendanceState();
  }

  void updatePosition(Position position) {
    print('✅ Updating position in provider: ${position.latitude}');
    state = state.copyWith(position: position);
  }

  void setActivity(AttendanceEnum activity) {
    state = state.copyWith(activity: activity);
  }

  void updateAddress(String address) {
    state = state.copyWith(address: address);
  }

  void setClockInTime() {
    state = state.copyWith(clockInTime: DateTime.now());
  }

  void setClockOutTime() {
    state = state.copyWith(clockOutTime: DateTime.now());
  }
}

@Riverpod(keepAlive: true)
class TodayAttendance extends _$TodayAttendance {
  @override
  FutureOr<AttendanceData?> build() async {
    final prefs = await SharedPreferences.getInstance();
    final user = ref.read(authProvider);
    final savedJson = prefs.getString('todayAttendance_${user.value?.id}');
    if (savedJson != null) {
      final saved = AttendanceData.fromJson(jsonDecode(savedJson));
      final today = DateFormat('yyyy-MM-dd').format(DateTime.now());
      if (saved.attendanceDate == today) return saved;
    }
    return null;
  }

  Future<void> refreshFromServer(String attendanceId) async {
    state = const AsyncLoading();
    try {
      final detail = await ref
          .read(attendanceRepoProvider)
          .getDetailAttendance(attendanceId);
      final data = detail.toData();

      final prefs = await SharedPreferences.getInstance();
      final user = ref.read(authProvider);
      await prefs.setString(
          'todayAttendance_${user.value?.id}', jsonEncode(data.toJson()));

      state = AsyncData(data);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<void> clockIn(ClockInRequestModel request) async {
    state = const AsyncLoading();
    try {
      final user = ref.read(authProvider);
      final result = await ref.read(clockInUseCaseProvider)(request);

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(
          'todayAttendance_${user.value?.id}', jsonEncode(result.toJson()));

      state = AsyncData(result);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<void> clockOut(ClockOutRequestModel request) async {
    final current = state.value;
    if (current == null) throw Exception("Not clocked in yet.");
    final user = ref.read(authProvider);

    state = const AsyncLoading();
    try {
      final result =
          await ref.read(clockOutUseCaseProvider)(current.id, request);

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(
          'todayAttendance_${user.value?.id}', jsonEncode(result.toJson()));

      state = AsyncData(result);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<void> clear() async {
    final user = ref.read(authProvider);
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('todayAttendance_${user.value?.id}');
    state = const AsyncData(null);
  }
}

@Riverpod(keepAlive: true)
class PaginatedActivityLogs extends _$PaginatedActivityLogs {
  /// The build method is responsible for fetching the INITIAL page.
  @override
  Future<List<ActivityLogModel>> build() async {
    ref.keepAlive();
    final repository = ref.watch(attendanceRepoProvider);
    final response = await repository.getActivityLogs(page: 1);

    _nextUrl = response.links?.next;
    return response.data;
  }

  String? _nextUrl;
  bool _isFetching = false;

  Future<void> fetchNextPage() async {
    if (_isFetching || _nextUrl == null) {
      return;
    }

    _isFetching = true;

    try {
      final repository = ref.read(attendanceRepoProvider);
      // Call the new repository method with the full URL
      final response = await repository.getActivityLogsByUrl(_nextUrl!);

      // Update the nextUrl for the *next* subsequent fetch
      _nextUrl = response.links?.next;

      // Add the new items to the existing list
      state = AsyncData([...state.value!, ...response.data]);
    } on UnauthorizedException catch (e, st) {
      state = AsyncError(e.message, st);
    } on NetworkException catch (e, st) {
      state = AsyncError(e.message, st);
    } on ServerException catch (e, st) {
      state = AsyncError(e.message, st);
    } catch (e, st) {
      state = AsyncError(e.toString(), st);
    } finally {
      _isFetching = false;
    }
  }
}

@riverpod
Future<List<ActivityLogModel>> recentActivity(
  Ref ref, {
  int limit = 10,
}) async {
  final repository = ref.watch(attendanceRepoProvider);

  final response = await repository.getActivityLogs(page: 1, limit: limit);

  return response.data;
}

@riverpod
Future<AttendanceDetail?> getDetailAttendance(
  Ref ref, {
  required String attendanceId,
}) async {
  if (attendanceId.isEmpty) return null;
  return ref.read(attendanceRepoProvider).getDetailAttendance(attendanceId);
}

@riverpod
class AttendanceHistory extends _$AttendanceHistory {
  @override
  FutureOr<List<AttendanceModel>> build() async {
    final usecase = ref.read(getHistoryUseCaseProvider);
    return await usecase();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    try {
      final data = await ref.read(getHistoryUseCaseProvider)();
      state = AsyncData(data);
    } on UnauthorizedException catch (e, st) {
      state = AsyncError(e.message, st);
    } on NetworkException catch (e, st) {
      state = AsyncError(e.message, st);
    } on ServerException catch (e, st) {
      state = AsyncError(e.message, st);
    } catch (e, st) {
      state = AsyncError(e.toString(), st);
    }
  }
}

@riverpod
class ShiftList extends _$ShiftList {
  @override
  FutureOr<List<ShiftModel>> build() {
    return ref.watch(getShiftsUseCaseProvider)();
  }
}
