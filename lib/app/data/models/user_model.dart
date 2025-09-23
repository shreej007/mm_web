import 'package:freezed_annotation/freezed_annotation.dart';
import 'basic_info_model.dart';
import 'physical_attribute_model.dart';
import 'horoscope_details_model.dart';
import 'career_details_model.dart';
import 'family_details_model.dart';
import 'expectations_model.dart';
import 'profile_photos_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    String? id,
    BasicInfo? basicInfo,
    PhysicalAttribute? physicalAttribute,
    HoroscopeDetails? horoscopeDetails,
    CareerDetails? careerDetails,
    FamilyDetails? familyDetails,
    Expectations? expectations,
    ProfilePhotos? profilePhotos,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
