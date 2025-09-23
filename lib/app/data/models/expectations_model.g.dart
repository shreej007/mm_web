// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expectations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpectationsImpl _$$ExpectationsImplFromJson(Map<String, dynamic> json) =>
    _$ExpectationsImpl(
      preferredCities: (json['preferredCities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      mangalDosh: json['mangalDosh'] as bool?,
      expectedSubCaste: json['expectedSubCaste'] as String?,
      expectedHeight: json['expectedHeight'] as String?,
      minAgeGap: (json['minAgeGap'] as num?)?.toInt(),
      expectedEducation: json['expectedEducation'] as String?,
      expectedOccupation: json['expectedOccupation'] as String?,
      incomePerMonth: (json['incomePerMonth'] as num?)?.toDouble(),
      expectedMaritalStatus: json['expectedMaritalStatus'] as String?,
    );

Map<String, dynamic> _$$ExpectationsImplToJson(_$ExpectationsImpl instance) =>
    <String, dynamic>{
      'preferredCities': instance.preferredCities,
      'mangalDosh': instance.mangalDosh,
      'expectedSubCaste': instance.expectedSubCaste,
      'expectedHeight': instance.expectedHeight,
      'minAgeGap': instance.minAgeGap,
      'expectedEducation': instance.expectedEducation,
      'expectedOccupation': instance.expectedOccupation,
      'incomePerMonth': instance.incomePerMonth,
      'expectedMaritalStatus': instance.expectedMaritalStatus,
    };
