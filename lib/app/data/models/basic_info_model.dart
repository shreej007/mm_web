import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_info_model.freezed.dart';
part 'basic_info_model.g.dart';

@freezed
class BasicInfo with _$BasicInfo {
  const factory BasicInfo({
    String? firstName,
    String? middleName,
    String? lastName,
    String? gender,
    String? birthdate,
    String? subCaste,
    required String email,
    String? mobile,
    String? password,
  }) = _BasicInfo;

  factory BasicInfo.fromJson(Map<String, dynamic> json) => _$BasicInfoFromJson(json);
}
