// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_photos_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProfilePhotos _$ProfilePhotosFromJson(Map<String, dynamic> json) {
  return _ProfilePhotos.fromJson(json);
}

/// @nodoc
mixin _$ProfilePhotos {
  String? get profilePicUrl => throw _privateConstructorUsedError;
  List<String>? get album => throw _privateConstructorUsedError;

  /// Serializes this ProfilePhotos to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfilePhotos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfilePhotosCopyWith<ProfilePhotos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePhotosCopyWith<$Res> {
  factory $ProfilePhotosCopyWith(
    ProfilePhotos value,
    $Res Function(ProfilePhotos) then,
  ) = _$ProfilePhotosCopyWithImpl<$Res, ProfilePhotos>;
  @useResult
  $Res call({String? profilePicUrl, List<String>? album});
}

/// @nodoc
class _$ProfilePhotosCopyWithImpl<$Res, $Val extends ProfilePhotos>
    implements $ProfilePhotosCopyWith<$Res> {
  _$ProfilePhotosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfilePhotos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? profilePicUrl = freezed, Object? album = freezed}) {
    return _then(
      _value.copyWith(
            profilePicUrl: freezed == profilePicUrl
                ? _value.profilePicUrl
                : profilePicUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            album: freezed == album
                ? _value.album
                : album // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProfilePhotosImplCopyWith<$Res>
    implements $ProfilePhotosCopyWith<$Res> {
  factory _$$ProfilePhotosImplCopyWith(
    _$ProfilePhotosImpl value,
    $Res Function(_$ProfilePhotosImpl) then,
  ) = __$$ProfilePhotosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? profilePicUrl, List<String>? album});
}

/// @nodoc
class __$$ProfilePhotosImplCopyWithImpl<$Res>
    extends _$ProfilePhotosCopyWithImpl<$Res, _$ProfilePhotosImpl>
    implements _$$ProfilePhotosImplCopyWith<$Res> {
  __$$ProfilePhotosImplCopyWithImpl(
    _$ProfilePhotosImpl _value,
    $Res Function(_$ProfilePhotosImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfilePhotos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? profilePicUrl = freezed, Object? album = freezed}) {
    return _then(
      _$ProfilePhotosImpl(
        profilePicUrl: freezed == profilePicUrl
            ? _value.profilePicUrl
            : profilePicUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        album: freezed == album
            ? _value._album
            : album // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfilePhotosImpl implements _ProfilePhotos {
  const _$ProfilePhotosImpl({this.profilePicUrl, final List<String>? album})
    : _album = album;

  factory _$ProfilePhotosImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfilePhotosImplFromJson(json);

  @override
  final String? profilePicUrl;
  final List<String>? _album;
  @override
  List<String>? get album {
    final value = _album;
    if (value == null) return null;
    if (_album is EqualUnmodifiableListView) return _album;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProfilePhotos(profilePicUrl: $profilePicUrl, album: $album)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfilePhotosImpl &&
            (identical(other.profilePicUrl, profilePicUrl) ||
                other.profilePicUrl == profilePicUrl) &&
            const DeepCollectionEquality().equals(other._album, _album));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    profilePicUrl,
    const DeepCollectionEquality().hash(_album),
  );

  /// Create a copy of ProfilePhotos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfilePhotosImplCopyWith<_$ProfilePhotosImpl> get copyWith =>
      __$$ProfilePhotosImplCopyWithImpl<_$ProfilePhotosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfilePhotosImplToJson(this);
  }
}

abstract class _ProfilePhotos implements ProfilePhotos {
  const factory _ProfilePhotos({
    final String? profilePicUrl,
    final List<String>? album,
  }) = _$ProfilePhotosImpl;

  factory _ProfilePhotos.fromJson(Map<String, dynamic> json) =
      _$ProfilePhotosImpl.fromJson;

  @override
  String? get profilePicUrl;
  @override
  List<String>? get album;

  /// Create a copy of ProfilePhotos
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfilePhotosImplCopyWith<_$ProfilePhotosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
