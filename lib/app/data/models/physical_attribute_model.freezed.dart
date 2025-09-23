// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'physical_attribute_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PhysicalAttribute _$PhysicalAttributeFromJson(Map<String, dynamic> json) {
  return _PhysicalAttribute.fromJson(json);
}

/// @nodoc
mixin _$PhysicalAttribute {
  String? get height => throw _privateConstructorUsedError;
  String? get weight => throw _privateConstructorUsedError;
  String? get complexion => throw _privateConstructorUsedError;
  String? get bloodGroup => throw _privateConstructorUsedError;

  /// Serializes this PhysicalAttribute to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhysicalAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhysicalAttributeCopyWith<PhysicalAttribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhysicalAttributeCopyWith<$Res> {
  factory $PhysicalAttributeCopyWith(
    PhysicalAttribute value,
    $Res Function(PhysicalAttribute) then,
  ) = _$PhysicalAttributeCopyWithImpl<$Res, PhysicalAttribute>;
  @useResult
  $Res call({
    String? height,
    String? weight,
    String? complexion,
    String? bloodGroup,
  });
}

/// @nodoc
class _$PhysicalAttributeCopyWithImpl<$Res, $Val extends PhysicalAttribute>
    implements $PhysicalAttributeCopyWith<$Res> {
  _$PhysicalAttributeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhysicalAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? weight = freezed,
    Object? complexion = freezed,
    Object? bloodGroup = freezed,
  }) {
    return _then(
      _value.copyWith(
            height: freezed == height
                ? _value.height
                : height // ignore: cast_nullable_to_non_nullable
                      as String?,
            weight: freezed == weight
                ? _value.weight
                : weight // ignore: cast_nullable_to_non_nullable
                      as String?,
            complexion: freezed == complexion
                ? _value.complexion
                : complexion // ignore: cast_nullable_to_non_nullable
                      as String?,
            bloodGroup: freezed == bloodGroup
                ? _value.bloodGroup
                : bloodGroup // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PhysicalAttributeImplCopyWith<$Res>
    implements $PhysicalAttributeCopyWith<$Res> {
  factory _$$PhysicalAttributeImplCopyWith(
    _$PhysicalAttributeImpl value,
    $Res Function(_$PhysicalAttributeImpl) then,
  ) = __$$PhysicalAttributeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? height,
    String? weight,
    String? complexion,
    String? bloodGroup,
  });
}

/// @nodoc
class __$$PhysicalAttributeImplCopyWithImpl<$Res>
    extends _$PhysicalAttributeCopyWithImpl<$Res, _$PhysicalAttributeImpl>
    implements _$$PhysicalAttributeImplCopyWith<$Res> {
  __$$PhysicalAttributeImplCopyWithImpl(
    _$PhysicalAttributeImpl _value,
    $Res Function(_$PhysicalAttributeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PhysicalAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? weight = freezed,
    Object? complexion = freezed,
    Object? bloodGroup = freezed,
  }) {
    return _then(
      _$PhysicalAttributeImpl(
        height: freezed == height
            ? _value.height
            : height // ignore: cast_nullable_to_non_nullable
                  as String?,
        weight: freezed == weight
            ? _value.weight
            : weight // ignore: cast_nullable_to_non_nullable
                  as String?,
        complexion: freezed == complexion
            ? _value.complexion
            : complexion // ignore: cast_nullable_to_non_nullable
                  as String?,
        bloodGroup: freezed == bloodGroup
            ? _value.bloodGroup
            : bloodGroup // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PhysicalAttributeImpl implements _PhysicalAttribute {
  const _$PhysicalAttributeImpl({
    this.height,
    this.weight,
    this.complexion,
    this.bloodGroup,
  });

  factory _$PhysicalAttributeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhysicalAttributeImplFromJson(json);

  @override
  final String? height;
  @override
  final String? weight;
  @override
  final String? complexion;
  @override
  final String? bloodGroup;

  @override
  String toString() {
    return 'PhysicalAttribute(height: $height, weight: $weight, complexion: $complexion, bloodGroup: $bloodGroup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhysicalAttributeImpl &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.complexion, complexion) ||
                other.complexion == complexion) &&
            (identical(other.bloodGroup, bloodGroup) ||
                other.bloodGroup == bloodGroup));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, height, weight, complexion, bloodGroup);

  /// Create a copy of PhysicalAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhysicalAttributeImplCopyWith<_$PhysicalAttributeImpl> get copyWith =>
      __$$PhysicalAttributeImplCopyWithImpl<_$PhysicalAttributeImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PhysicalAttributeImplToJson(this);
  }
}

abstract class _PhysicalAttribute implements PhysicalAttribute {
  const factory _PhysicalAttribute({
    final String? height,
    final String? weight,
    final String? complexion,
    final String? bloodGroup,
  }) = _$PhysicalAttributeImpl;

  factory _PhysicalAttribute.fromJson(Map<String, dynamic> json) =
      _$PhysicalAttributeImpl.fromJson;

  @override
  String? get height;
  @override
  String? get weight;
  @override
  String? get complexion;
  @override
  String? get bloodGroup;

  /// Create a copy of PhysicalAttribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhysicalAttributeImplCopyWith<_$PhysicalAttributeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
