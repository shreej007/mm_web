// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_photos_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfilePhotosImpl _$$ProfilePhotosImplFromJson(Map<String, dynamic> json) =>
    _$ProfilePhotosImpl(
      profilePicUrl: json['profilePicUrl'] as String?,
      album: (json['album'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ProfilePhotosImplToJson(_$ProfilePhotosImpl instance) =>
    <String, dynamic>{
      'profilePicUrl': instance.profilePicUrl,
      'album': instance.album,
    };
