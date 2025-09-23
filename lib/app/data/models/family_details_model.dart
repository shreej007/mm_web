import 'package:freezed_annotation/freezed_annotation.dart';

part 'family_details_model.freezed.dart';
part 'family_details_model.g.dart';

@freezed
class FamilyDetails with _$FamilyDetails {
  const factory FamilyDetails({
    bool? fatherAlive,
    bool? motherAlive,
    int? brothers,
    int? marriedBrothers,
    int? sisters,
    int? marriedSister,
    String? parentNames,
    String? parentOccupation,
    String? parentsResideCity,
    String? nativeDistrict,
    String? nativeTaluka,
    String? familyEstate,
    List<String>? surnamesOfRelatives,
    String? maternalPlaceSurname,
    String? intercasteStatus,
    String? intercasteDetails,
  }) = _FamilyDetails;

  factory FamilyDetails.fromJson(Map<String, dynamic> json) => _$FamilyDetailsFromJson(json);
}
