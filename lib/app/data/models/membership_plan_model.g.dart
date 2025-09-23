// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'membership_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MembershipPlanModelImpl _$$MembershipPlanModelImplFromJson(
  Map<String, dynamic> json,
) => _$MembershipPlanModelImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  price: (json['price'] as num).toDouble(),
  durationDays: (json['durationDays'] as num).toInt(),
  features: (json['features'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$$MembershipPlanModelImplToJson(
  _$MembershipPlanModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'price': instance.price,
  'durationDays': instance.durationDays,
  'features': instance.features,
};
