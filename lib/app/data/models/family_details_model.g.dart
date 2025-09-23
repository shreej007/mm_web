// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FamilyDetailsImpl _$$FamilyDetailsImplFromJson(Map<String, dynamic> json) =>
    _$FamilyDetailsImpl(
      fatherAlive: json['fatherAlive'] as bool?,
      motherAlive: json['motherAlive'] as bool?,
      brothers: (json['brothers'] as num?)?.toInt(),
      marriedBrothers: (json['marriedBrothers'] as num?)?.toInt(),
      sisters: (json['sisters'] as num?)?.toInt(),
      marriedSister: (json['marriedSister'] as num?)?.toInt(),
      parentNames: json['parentNames'] as String?,
      parentOccupation: json['parentOccupation'] as String?,
      parentsResideCity: json['parentsResideCity'] as String?,
      nativeDistrict: json['nativeDistrict'] as String?,
      nativeTaluka: json['nativeTaluka'] as String?,
      familyEstate: json['familyEstate'] as String?,
      surnamesOfRelatives: (json['surnamesOfRelatives'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      maternalPlaceSurname: json['maternalPlaceSurname'] as String?,
      intercasteStatus: json['intercasteStatus'] as String?,
      intercasteDetails: json['intercasteDetails'] as String?,
    );

Map<String, dynamic> _$$FamilyDetailsImplToJson(_$FamilyDetailsImpl instance) =>
    <String, dynamic>{
      'fatherAlive': instance.fatherAlive,
      'motherAlive': instance.motherAlive,
      'brothers': instance.brothers,
      'marriedBrothers': instance.marriedBrothers,
      'sisters': instance.sisters,
      'marriedSister': instance.marriedSister,
      'parentNames': instance.parentNames,
      'parentOccupation': instance.parentOccupation,
      'parentsResideCity': instance.parentsResideCity,
      'nativeDistrict': instance.nativeDistrict,
      'nativeTaluka': instance.nativeTaluka,
      'familyEstate': instance.familyEstate,
      'surnamesOfRelatives': instance.surnamesOfRelatives,
      'maternalPlaceSurname': instance.maternalPlaceSurname,
      'intercasteStatus': instance.intercasteStatus,
      'intercasteDetails': instance.intercasteDetails,
    };
