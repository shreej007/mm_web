// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String? get id => throw _privateConstructorUsedError;
  BasicInfo? get basicInfo => throw _privateConstructorUsedError;
  PhysicalAttribute? get physicalAttribute =>
      throw _privateConstructorUsedError;
  HoroscopeDetails? get horoscopeDetails => throw _privateConstructorUsedError;
  CareerDetails? get careerDetails => throw _privateConstructorUsedError;
  FamilyDetails? get familyDetails => throw _privateConstructorUsedError;
  Expectations? get expectations => throw _privateConstructorUsedError;
  ProfilePhotos? get profilePhotos => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({
    String? id,
    BasicInfo? basicInfo,
    PhysicalAttribute? physicalAttribute,
    HoroscopeDetails? horoscopeDetails,
    CareerDetails? careerDetails,
    FamilyDetails? familyDetails,
    Expectations? expectations,
    ProfilePhotos? profilePhotos,
  });

  $BasicInfoCopyWith<$Res>? get basicInfo;
  $PhysicalAttributeCopyWith<$Res>? get physicalAttribute;
  $HoroscopeDetailsCopyWith<$Res>? get horoscopeDetails;
  $CareerDetailsCopyWith<$Res>? get careerDetails;
  $FamilyDetailsCopyWith<$Res>? get familyDetails;
  $ExpectationsCopyWith<$Res>? get expectations;
  $ProfilePhotosCopyWith<$Res>? get profilePhotos;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? basicInfo = freezed,
    Object? physicalAttribute = freezed,
    Object? horoscopeDetails = freezed,
    Object? careerDetails = freezed,
    Object? familyDetails = freezed,
    Object? expectations = freezed,
    Object? profilePhotos = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            basicInfo: freezed == basicInfo
                ? _value.basicInfo
                : basicInfo // ignore: cast_nullable_to_non_nullable
                      as BasicInfo?,
            physicalAttribute: freezed == physicalAttribute
                ? _value.physicalAttribute
                : physicalAttribute // ignore: cast_nullable_to_non_nullable
                      as PhysicalAttribute?,
            horoscopeDetails: freezed == horoscopeDetails
                ? _value.horoscopeDetails
                : horoscopeDetails // ignore: cast_nullable_to_non_nullable
                      as HoroscopeDetails?,
            careerDetails: freezed == careerDetails
                ? _value.careerDetails
                : careerDetails // ignore: cast_nullable_to_non_nullable
                      as CareerDetails?,
            familyDetails: freezed == familyDetails
                ? _value.familyDetails
                : familyDetails // ignore: cast_nullable_to_non_nullable
                      as FamilyDetails?,
            expectations: freezed == expectations
                ? _value.expectations
                : expectations // ignore: cast_nullable_to_non_nullable
                      as Expectations?,
            profilePhotos: freezed == profilePhotos
                ? _value.profilePhotos
                : profilePhotos // ignore: cast_nullable_to_non_nullable
                      as ProfilePhotos?,
          )
          as $Val,
    );
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasicInfoCopyWith<$Res>? get basicInfo {
    if (_value.basicInfo == null) {
      return null;
    }

    return $BasicInfoCopyWith<$Res>(_value.basicInfo!, (value) {
      return _then(_value.copyWith(basicInfo: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhysicalAttributeCopyWith<$Res>? get physicalAttribute {
    if (_value.physicalAttribute == null) {
      return null;
    }

    return $PhysicalAttributeCopyWith<$Res>(_value.physicalAttribute!, (value) {
      return _then(_value.copyWith(physicalAttribute: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HoroscopeDetailsCopyWith<$Res>? get horoscopeDetails {
    if (_value.horoscopeDetails == null) {
      return null;
    }

    return $HoroscopeDetailsCopyWith<$Res>(_value.horoscopeDetails!, (value) {
      return _then(_value.copyWith(horoscopeDetails: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CareerDetailsCopyWith<$Res>? get careerDetails {
    if (_value.careerDetails == null) {
      return null;
    }

    return $CareerDetailsCopyWith<$Res>(_value.careerDetails!, (value) {
      return _then(_value.copyWith(careerDetails: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FamilyDetailsCopyWith<$Res>? get familyDetails {
    if (_value.familyDetails == null) {
      return null;
    }

    return $FamilyDetailsCopyWith<$Res>(_value.familyDetails!, (value) {
      return _then(_value.copyWith(familyDetails: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExpectationsCopyWith<$Res>? get expectations {
    if (_value.expectations == null) {
      return null;
    }

    return $ExpectationsCopyWith<$Res>(_value.expectations!, (value) {
      return _then(_value.copyWith(expectations: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfilePhotosCopyWith<$Res>? get profilePhotos {
    if (_value.profilePhotos == null) {
      return null;
    }

    return $ProfilePhotosCopyWith<$Res>(_value.profilePhotos!, (value) {
      return _then(_value.copyWith(profilePhotos: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
    _$UserModelImpl value,
    $Res Function(_$UserModelImpl) then,
  ) = __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    BasicInfo? basicInfo,
    PhysicalAttribute? physicalAttribute,
    HoroscopeDetails? horoscopeDetails,
    CareerDetails? careerDetails,
    FamilyDetails? familyDetails,
    Expectations? expectations,
    ProfilePhotos? profilePhotos,
  });

  @override
  $BasicInfoCopyWith<$Res>? get basicInfo;
  @override
  $PhysicalAttributeCopyWith<$Res>? get physicalAttribute;
  @override
  $HoroscopeDetailsCopyWith<$Res>? get horoscopeDetails;
  @override
  $CareerDetailsCopyWith<$Res>? get careerDetails;
  @override
  $FamilyDetailsCopyWith<$Res>? get familyDetails;
  @override
  $ExpectationsCopyWith<$Res>? get expectations;
  @override
  $ProfilePhotosCopyWith<$Res>? get profilePhotos;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
    _$UserModelImpl _value,
    $Res Function(_$UserModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? basicInfo = freezed,
    Object? physicalAttribute = freezed,
    Object? horoscopeDetails = freezed,
    Object? careerDetails = freezed,
    Object? familyDetails = freezed,
    Object? expectations = freezed,
    Object? profilePhotos = freezed,
  }) {
    return _then(
      _$UserModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        basicInfo: freezed == basicInfo
            ? _value.basicInfo
            : basicInfo // ignore: cast_nullable_to_non_nullable
                  as BasicInfo?,
        physicalAttribute: freezed == physicalAttribute
            ? _value.physicalAttribute
            : physicalAttribute // ignore: cast_nullable_to_non_nullable
                  as PhysicalAttribute?,
        horoscopeDetails: freezed == horoscopeDetails
            ? _value.horoscopeDetails
            : horoscopeDetails // ignore: cast_nullable_to_non_nullable
                  as HoroscopeDetails?,
        careerDetails: freezed == careerDetails
            ? _value.careerDetails
            : careerDetails // ignore: cast_nullable_to_non_nullable
                  as CareerDetails?,
        familyDetails: freezed == familyDetails
            ? _value.familyDetails
            : familyDetails // ignore: cast_nullable_to_non_nullable
                  as FamilyDetails?,
        expectations: freezed == expectations
            ? _value.expectations
            : expectations // ignore: cast_nullable_to_non_nullable
                  as Expectations?,
        profilePhotos: freezed == profilePhotos
            ? _value.profilePhotos
            : profilePhotos // ignore: cast_nullable_to_non_nullable
                  as ProfilePhotos?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl({
    this.id,
    this.basicInfo,
    this.physicalAttribute,
    this.horoscopeDetails,
    this.careerDetails,
    this.familyDetails,
    this.expectations,
    this.profilePhotos,
  });

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String? id;
  @override
  final BasicInfo? basicInfo;
  @override
  final PhysicalAttribute? physicalAttribute;
  @override
  final HoroscopeDetails? horoscopeDetails;
  @override
  final CareerDetails? careerDetails;
  @override
  final FamilyDetails? familyDetails;
  @override
  final Expectations? expectations;
  @override
  final ProfilePhotos? profilePhotos;

  @override
  String toString() {
    return 'UserModel(id: $id, basicInfo: $basicInfo, physicalAttribute: $physicalAttribute, horoscopeDetails: $horoscopeDetails, careerDetails: $careerDetails, familyDetails: $familyDetails, expectations: $expectations, profilePhotos: $profilePhotos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.basicInfo, basicInfo) ||
                other.basicInfo == basicInfo) &&
            (identical(other.physicalAttribute, physicalAttribute) ||
                other.physicalAttribute == physicalAttribute) &&
            (identical(other.horoscopeDetails, horoscopeDetails) ||
                other.horoscopeDetails == horoscopeDetails) &&
            (identical(other.careerDetails, careerDetails) ||
                other.careerDetails == careerDetails) &&
            (identical(other.familyDetails, familyDetails) ||
                other.familyDetails == familyDetails) &&
            (identical(other.expectations, expectations) ||
                other.expectations == expectations) &&
            (identical(other.profilePhotos, profilePhotos) ||
                other.profilePhotos == profilePhotos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    basicInfo,
    physicalAttribute,
    horoscopeDetails,
    careerDetails,
    familyDetails,
    expectations,
    profilePhotos,
  );

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel({
    final String? id,
    final BasicInfo? basicInfo,
    final PhysicalAttribute? physicalAttribute,
    final HoroscopeDetails? horoscopeDetails,
    final CareerDetails? careerDetails,
    final FamilyDetails? familyDetails,
    final Expectations? expectations,
    final ProfilePhotos? profilePhotos,
  }) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String? get id;
  @override
  BasicInfo? get basicInfo;
  @override
  PhysicalAttribute? get physicalAttribute;
  @override
  HoroscopeDetails? get horoscopeDetails;
  @override
  CareerDetails? get careerDetails;
  @override
  FamilyDetails? get familyDetails;
  @override
  Expectations? get expectations;
  @override
  ProfilePhotos? get profilePhotos;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
