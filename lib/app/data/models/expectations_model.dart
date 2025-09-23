import 'package:freezed_annotation/freezed_annotation.dart';

part 'expectations_model.freezed.dart';
part 'expectations_model.g.dart';

@freezed
class Expectations with _$Expectations {
  const factory Expectations({
    List<String>? preferredCities,
    bool? mangalDosh,
    String? expectedSubCaste,
    String? expectedHeight,
    int? minAgeGap,
    String? expectedEducation,
    String? expectedOccupation,
    double? incomePerMonth,
    String? expectedMaritalStatus,
  }) = _Expectations;

  factory Expectations.fromJson(Map<String, dynamic> json) => _$ExpectationsFromJson(json);
}
