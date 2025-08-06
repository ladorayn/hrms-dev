import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hrms_mobile/features/attendance/data/repositories/attendance_repository_impl.dart';
import 'package:hrms_mobile/features/attendance/domain/entities/attendance.dart';
import 'package:hrms_mobile/features/attendance/domain/usecases/clock_in_usecase.dart';
import 'package:hrms_mobile/features/attendance/domain/usecases/clock_out_usecase.dart';
import 'package:hrms_mobile/features/attendance/domain/usecases/get_attendance_history_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'attendance_provider.g.dart';

final attendanceRepoProvider = Provider((ref) => AttendanceRepositoryImpl());

final clockInUseCaseProvider =
    Provider((ref) => ClockInUseCase(ref.watch(attendanceRepoProvider)));
final clockOutUseCaseProvider =
    Provider((ref) => ClockOutUseCase(ref.watch(attendanceRepoProvider)));
final getHistoryUseCaseProvider = Provider(
    (ref) => GetAttendanceHistoryUseCase(ref.watch(attendanceRepoProvider)));

@riverpod
class ClockIn extends _$ClockIn {
  @override
  FutureOr<void> build() {}

  Future<void> submit() async {
    state = const AsyncLoading();
    try {
      await ref.read(clockInUseCaseProvider)();
      state = const AsyncData(null);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}

@riverpod
class ClockOut extends _$ClockOut {
  @override
  FutureOr<void> build() {}

  Future<void> submit() async {
    state = const AsyncLoading();
    try {
      await ref.read(clockOutUseCaseProvider)();
      state = const AsyncData(null);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}

@riverpod
class AttendanceHistory extends _$AttendanceHistory {
  @override
  FutureOr<List<Attendance>> build() async {
    final usecase = ref.read(getHistoryUseCaseProvider);
    return await usecase();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    try {
      final data = await ref.read(getHistoryUseCaseProvider)();
      state = AsyncData(data);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}
