import 'package:freezed_annotation/freezed_annotation.dart';

part 'okr_list.freezed.dart';
part 'okr_list.g.dart';

@freezed
class OKRList with _$OKRList {
  const factory OKRList({
    int? id,
    String? period,
    String? status,
    @JsonKey(name: 'form_id') int? formId,
    @JsonKey(name: 'due_date') String? dueDate,
  }) = _OKRList;

  factory OKRList.fromJson(Map<String, dynamic> json) =>
      _$OKRListFromJson(json);
}
