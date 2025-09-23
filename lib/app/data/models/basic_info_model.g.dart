// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasicInfoImpl _$$BasicInfoImplFromJson(Map<String, dynamic> json) =>
    _$BasicInfoImpl(
      firstName: json['firstName'] as String?,
      middleName: json['middleName'] as String?,
      lastName: json['lastName'] as String?,
      gender: json['gender'] as String?,
      birthdate: json['birthdate'] as String?,
      subCaste: json['subCaste'] as String?,
      email: json['email'] as String,
      mobile: json['mobile'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$BasicInfoImplToJson(_$BasicInfoImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'gender': instance.gender,
      'birthdate': instance.birthdate,
      'subCaste': instance.subCaste,
      'email': instance.email,
      'mobile': instance.mobile,
      'password': instance.password,
    };
