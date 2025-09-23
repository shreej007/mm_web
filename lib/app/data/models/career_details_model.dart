import 'package:freezed_annotation/freezed_annotation.dart';

part 'career_details_model.freezed.dart';
part 'career_details_model.g.dart';

@freezed
class CareerDetails with _$CareerDetails {
  const factory CareerDetails({
    String? degree,
    String? edufield,
    String? occupationType,
    String? occupationPlace,
    double? personalIncome,
  }) = _CareerDetails;

  factory CareerDetails.fromJson(Map<String, dynamic> json) => _$CareerDetailsFromJson(json);
}
