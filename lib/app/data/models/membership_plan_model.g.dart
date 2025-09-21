// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'membership_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MembershipPlanModel _$MembershipPlanModelFromJson(Map<String, dynamic> json) =>
    _MembershipPlanModel(
      id: json['id'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      durationDays: (json['durationDays'] as num).toInt(),
      features: (json['features'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$MembershipPlanModelToJson(
  _MembershipPlanModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'price': instance.price,
  'durationDays': instance.durationDays,
  'features': instance.features,
};
