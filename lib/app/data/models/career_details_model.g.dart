// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'career_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CareerDetailsImpl _$$CareerDetailsImplFromJson(Map<String, dynamic> json) =>
    _$CareerDetailsImpl(
      degree: json['degree'] as String?,
      edufield: json['edufield'] as String?,
      occupationType: json['occupationType'] as String?,
      occupationPlace: json['occupationPlace'] as String?,
      personalIncome: (json['personalIncome'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CareerDetailsImplToJson(_$CareerDetailsImpl instance) =>
    <String, dynamic>{
      'degree': instance.degree,
      'edufield': instance.edufield,
      'occupationType': instance.occupationType,
      'occupationPlace': instance.occupationPlace,
      'personalIncome': instance.personalIncome,
    };
