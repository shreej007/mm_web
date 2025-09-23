// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'horoscope_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HoroscopeDetails _$HoroscopeDetailsFromJson(Map<String, dynamic> json) {
  return _HoroscopeDetails.fromJson(json);
}

/// @nodoc
mixin _$HoroscopeDetails {
  String? get birthTime => throw _privateConstructorUsedError;
  String? get birthDistrict => throw _privateConstructorUsedError;
  String? get rashi => throw _privateConstructorUsedError;
  String? get nakshatra => throw _privateConstructorUsedError;

  /// Serializes this HoroscopeDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HoroscopeDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HoroscopeDetailsCopyWith<HoroscopeDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HoroscopeDetailsCopyWith<$Res> {
  factory $HoroscopeDetailsCopyWith(
    HoroscopeDetails value,
    $Res Function(HoroscopeDetails) then,
  ) = _$HoroscopeDetailsCopyWithImpl<$Res, HoroscopeDetails>;
  @useResult
  $Res call({
    String? birthTime,
    String? birthDistrict,
    String? rashi,
    String? nakshatra,
  });
}

/// @nodoc
class _$HoroscopeDetailsCopyWithImpl<$Res, $Val extends HoroscopeDetails>
    implements $HoroscopeDetailsCopyWith<$Res> {
  _$HoroscopeDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HoroscopeDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthTime = freezed,
    Object? birthDistrict = freezed,
    Object? rashi = freezed,
    Object? nakshatra = freezed,
  }) {
    return _then(
      _value.copyWith(
            birthTime: freezed == birthTime
                ? _value.birthTime
                : birthTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            birthDistrict: freezed == birthDistrict
                ? _value.birthDistrict
                : birthDistrict // ignore: cast_nullable_to_non_nullable
                      as String?,
            rashi: freezed == rashi
                ? _value.rashi
                : rashi // ignore: cast_nullable_to_non_nullable
                      as String?,
            nakshatra: freezed == nakshatra
                ? _value.nakshatra
                : nakshatra // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HoroscopeDetailsImplCopyWith<$Res>
    implements $HoroscopeDetailsCopyWith<$Res> {
  factory _$$HoroscopeDetailsImplCopyWith(
    _$HoroscopeDetailsImpl value,
    $Res Function(_$HoroscopeDetailsImpl) then,
  ) = __$$HoroscopeDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? birthTime,
    String? birthDistrict,
    String? rashi,
    String? nakshatra,
  });
}

/// @nodoc
class __$$HoroscopeDetailsImplCopyWithImpl<$Res>
    extends _$HoroscopeDetailsCopyWithImpl<$Res, _$HoroscopeDetailsImpl>
    implements _$$HoroscopeDetailsImplCopyWith<$Res> {
  __$$HoroscopeDetailsImplCopyWithImpl(
    _$HoroscopeDetailsImpl _value,
    $Res Function(_$HoroscopeDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HoroscopeDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthTime = freezed,
    Object? birthDistrict = freezed,
    Object? rashi = freezed,
    Object? nakshatra = freezed,
  }) {
    return _then(
      _$HoroscopeDetailsImpl(
        birthTime: freezed == birthTime
            ? _value.birthTime
            : birthTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        birthDistrict: freezed == birthDistrict
            ? _value.birthDistrict
            : birthDistrict // ignore: cast_nullable_to_non_nullable
                  as String?,
        rashi: freezed == rashi
            ? _value.rashi
            : rashi // ignore: cast_nullable_to_non_nullable
                  as String?,
        nakshatra: freezed == nakshatra
            ? _value.nakshatra
            : nakshatra // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HoroscopeDetailsImpl implements _HoroscopeDetails {
  const _$HoroscopeDetailsImpl({
    this.birthTime,
    this.birthDistrict,
    this.rashi,
    this.nakshatra,
  });

  factory _$HoroscopeDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$HoroscopeDetailsImplFromJson(json);

  @override
  final String? birthTime;
  @override
  final String? birthDistrict;
  @override
  final String? rashi;
  @override
  final String? nakshatra;

  @override
  String toString() {
    return 'HoroscopeDetails(birthTime: $birthTime, birthDistrict: $birthDistrict, rashi: $rashi, nakshatra: $nakshatra)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HoroscopeDetailsImpl &&
            (identical(other.birthTime, birthTime) ||
                other.birthTime == birthTime) &&
            (identical(other.birthDistrict, birthDistrict) ||
                other.birthDistrict == birthDistrict) &&
            (identical(other.rashi, rashi) || other.rashi == rashi) &&
            (identical(other.nakshatra, nakshatra) ||
                other.nakshatra == nakshatra));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, birthTime, birthDistrict, rashi, nakshatra);

  /// Create a copy of HoroscopeDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HoroscopeDetailsImplCopyWith<_$HoroscopeDetailsImpl> get copyWith =>
      __$$HoroscopeDetailsImplCopyWithImpl<_$HoroscopeDetailsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HoroscopeDetailsImplToJson(this);
  }
}

abstract class _HoroscopeDetails implements HoroscopeDetails {
  const factory _HoroscopeDetails({
    final String? birthTime,
    final String? birthDistrict,
    final String? rashi,
    final String? nakshatra,
  }) = _$HoroscopeDetailsImpl;

  factory _HoroscopeDetails.fromJson(Map<String, dynamic> json) =
      _$HoroscopeDetailsImpl.fromJson;

  @override
  String? get birthTime;
  @override
  String? get birthDistrict;
  @override
  String? get rashi;
  @override
  String? get nakshatra;

  /// Create a copy of HoroscopeDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HoroscopeDetailsImplCopyWith<_$HoroscopeDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
