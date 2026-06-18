import 'package:hrms_mobile/features/attendance/data/models/request/branch/branch_list_request_model.dart';
import 'package:hrms_mobile/features/attendance/data/models/response/branch/branch_list_response_model.dart';
import 'package:hrms_mobile/features/attendance/presentation/providers/attendance_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'branch_provider.g.dart';

@riverpod
class PaginatedBranches extends _$PaginatedBranches {
  @override
  Future<List<BranchData>> build({String? search}) async {
    final repository = ref.watch(attendanceRepoProvider);

    final request = BranchListRequestModel(page: '1', perPage: '15', search: search ?? '');

    final response = await repository.getBranches(request);

    _nextUrl = response.pagination?.next;
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
      final response = await repository.getBranchesByUrl(_nextUrl!);

      _nextUrl = response.pagination?.next;

      state = AsyncData([...state.value ?? [], ...response.data]);
    } catch (e, st) {
      state = AsyncError(e.toString(), st);
    } finally {
      _isFetching = false;
    }
  }
}
