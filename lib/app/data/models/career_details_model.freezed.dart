// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'career_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CareerDetails _$CareerDetailsFromJson(Map<String, dynamic> json) {
  return _CareerDetails.fromJson(json);
}

/// @nodoc
mixin _$CareerDetails {
  String? get degree => throw _privateConstructorUsedError;
  String? get edufield => throw _privateConstructorUsedError;
  String? get occupationType => throw _privateConstructorUsedError;
  String? get occupationPlace => throw _privateConstructorUsedError;
  double? get personalIncome => throw _privateConstructorUsedError;

  /// Serializes this CareerDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CareerDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CareerDetailsCopyWith<CareerDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareerDetailsCopyWith<$Res> {
  factory $CareerDetailsCopyWith(
    CareerDetails value,
    $Res Function(CareerDetails) then,
  ) = _$CareerDetailsCopyWithImpl<$Res, CareerDetails>;
  @useResult
  $Res call({
    String? degree,
    String? edufield,
    String? occupationType,
    String? occupationPlace,
    double? personalIncome,
  });
}

/// @nodoc
class _$CareerDetailsCopyWithImpl<$Res, $Val extends CareerDetails>
    implements $CareerDetailsCopyWith<$Res> {
  _$CareerDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CareerDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? degree = freezed,
    Object? edufield = freezed,
    Object? occupationType = freezed,
    Object? occupationPlace = freezed,
    Object? personalIncome = freezed,
  }) {
    return _then(
      _value.copyWith(
            degree: freezed == degree
                ? _value.degree
                : degree // ignore: cast_nullable_to_non_nullable
                      as String?,
            edufield: freezed == edufield
                ? _value.edufield
                : edufield // ignore: cast_nullable_to_non_nullable
                      as String?,
            occupationType: freezed == occupationType
                ? _value.occupationType
                : occupationType // ignore: cast_nullable_to_non_nullable
                      as String?,
            occupationPlace: freezed == occupationPlace
                ? _value.occupationPlace
                : occupationPlace // ignore: cast_nullable_to_non_nullable
                      as String?,
            personalIncome: freezed == personalIncome
                ? _value.personalIncome
                : personalIncome // ignore: cast_nullable_to_non_nullable
                      as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CareerDetailsImplCopyWith<$Res>
    implements $CareerDetailsCopyWith<$Res> {
  factory _$$CareerDetailsImplCopyWith(
    _$CareerDetailsImpl value,
    $Res Function(_$CareerDetailsImpl) then,
  ) = __$$CareerDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? degree,
    String? edufield,
    String? occupationType,
    String? occupationPlace,
    double? personalIncome,
  });
}

/// @nodoc
class __$$CareerDetailsImplCopyWithImpl<$Res>
    extends _$CareerDetailsCopyWithImpl<$Res, _$CareerDetailsImpl>
    implements _$$CareerDetailsImplCopyWith<$Res> {
  __$$CareerDetailsImplCopyWithImpl(
    _$CareerDetailsImpl _value,
    $Res Function(_$CareerDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CareerDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? degree = freezed,
    Object? edufield = freezed,
    Object? occupationType = freezed,
    Object? occupationPlace = freezed,
    Object? personalIncome = freezed,
  }) {
    return _then(
      _$CareerDetailsImpl(
        degree: freezed == degree
            ? _value.degree
            : degree // ignore: cast_nullable_to_non_nullable
                  as String?,
        edufield: freezed == edufield
            ? _value.edufield
            : edufield // ignore: cast_nullable_to_non_nullable
                  as String?,
        occupationType: freezed == occupationType
            ? _value.occupationType
            : occupationType // ignore: cast_nullable_to_non_nullable
                  as String?,
        occupationPlace: freezed == occupationPlace
            ? _value.occupationPlace
            : occupationPlace // ignore: cast_nullable_to_non_nullable
                  as String?,
        personalIncome: freezed == personalIncome
            ? _value.personalIncome
            : personalIncome // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CareerDetailsImpl implements _CareerDetails {
  const _$CareerDetailsImpl({
    this.degree,
    this.edufield,
    this.occupationType,
    this.occupationPlace,
    this.personalIncome,
  });

  factory _$CareerDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CareerDetailsImplFromJson(json);

  @override
  final String? degree;
  @override
  final String? edufield;
  @override
  final String? occupationType;
  @override
  final String? occupationPlace;
  @override
  final double? personalIncome;

  @override
  String toString() {
    return 'CareerDetails(degree: $degree, edufield: $edufield, occupationType: $occupationType, occupationPlace: $occupationPlace, personalIncome: $personalIncome)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CareerDetailsImpl &&
            (identical(other.degree, degree) || other.degree == degree) &&
            (identical(other.edufield, edufield) ||
                other.edufield == edufield) &&
            (identical(other.occupationType, occupationType) ||
                other.occupationType == occupationType) &&
            (identical(other.occupationPlace, occupationPlace) ||
                other.occupationPlace == occupationPlace) &&
            (identical(other.personalIncome, personalIncome) ||
                other.personalIncome == personalIncome));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    degree,
    edufield,
    occupationType,
    occupationPlace,
    personalIncome,
  );

  /// Create a copy of CareerDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CareerDetailsImplCopyWith<_$CareerDetailsImpl> get copyWith =>
      __$$CareerDetailsImplCopyWithImpl<_$CareerDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CareerDetailsImplToJson(this);
  }
}

abstract class _CareerDetails implements CareerDetails {
  const factory _CareerDetails({
    final String? degree,
    final String? edufield,
    final String? occupationType,
    final String? occupationPlace,
    final double? personalIncome,
  }) = _$CareerDetailsImpl;

  factory _CareerDetails.fromJson(Map<String, dynamic> json) =
      _$CareerDetailsImpl.fromJson;

  @override
  String? get degree;
  @override
  String? get edufield;
  @override
  String? get occupationType;
  @override
  String? get occupationPlace;
  @override
  double? get personalIncome;

  /// Create a copy of CareerDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CareerDetailsImplCopyWith<_$CareerDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
