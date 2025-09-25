// employment_detail.dart (or similar file)
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employment_detail.freezed.dart';
part 'employment_detail.g.dart';

@freezed
class Department with _$Department {
  const factory Department({
    required int id,
    required String name,
  }) = _Department;

  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);
}

@freezed
class JobLevel with _$JobLevel {
  const factory JobLevel({
    required int id,
    required String name,
  }) = _JobLevel;

  factory JobLevel.fromJson(Map<String, dynamic> json) =>
      _$JobLevelFromJson(json);
}

@freezed
class JobPosition with _$JobPosition {
  const factory JobPosition({
    required int id,
    required String name,
  }) = _JobPosition;

  factory JobPosition.fromJson(Map<String, dynamic> json) =>
      _$JobPositionFromJson(json);
}
