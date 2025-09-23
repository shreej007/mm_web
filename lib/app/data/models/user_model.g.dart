// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(
  Map<String, dynamic> json,
) => _$UserModelImpl(
  id: json['id'] as String?,
  basicInfo: json['basicInfo'] == null
      ? null
      : BasicInfo.fromJson(json['basicInfo'] as Map<String, dynamic>),
  physicalAttribute: json['physicalAttribute'] == null
      ? null
      : PhysicalAttribute.fromJson(
          json['physicalAttribute'] as Map<String, dynamic>,
        ),
  horoscopeDetails: json['horoscopeDetails'] == null
      ? null
      : HoroscopeDetails.fromJson(
          json['horoscopeDetails'] as Map<String, dynamic>,
        ),
  careerDetails: json['careerDetails'] == null
      ? null
      : CareerDetails.fromJson(json['careerDetails'] as Map<String, dynamic>),
  familyDetails: json['familyDetails'] == null
      ? null
      : FamilyDetails.fromJson(json['familyDetails'] as Map<String, dynamic>),
  expectations: json['expectations'] == null
      ? null
      : Expectations.fromJson(json['expectations'] as Map<String, dynamic>),
  profilePhotos: json['profilePhotos'] == null
      ? null
      : ProfilePhotos.fromJson(json['profilePhotos'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'basicInfo': instance.basicInfo,
      'physicalAttribute': instance.physicalAttribute,
      'horoscopeDetails': instance.horoscopeDetails,
      'careerDetails': instance.careerDetails,
      'familyDetails': instance.familyDetails,
      'expectations': instance.expectations,
      'profilePhotos': instance.profilePhotos,
    };
