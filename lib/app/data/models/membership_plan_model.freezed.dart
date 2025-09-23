// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'membership_plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MembershipPlanModel _$MembershipPlanModelFromJson(Map<String, dynamic> json) {
  return _MembershipPlanModel.fromJson(json);
}

/// @nodoc
mixin _$MembershipPlanModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get durationDays => throw _privateConstructorUsedError;
  List<String> get features => throw _privateConstructorUsedError;

  /// Serializes this MembershipPlanModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MembershipPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MembershipPlanModelCopyWith<MembershipPlanModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembershipPlanModelCopyWith<$Res> {
  factory $MembershipPlanModelCopyWith(
    MembershipPlanModel value,
    $Res Function(MembershipPlanModel) then,
  ) = _$MembershipPlanModelCopyWithImpl<$Res, MembershipPlanModel>;
  @useResult
  $Res call({
    String id,
    String name,
    double price,
    int durationDays,
    List<String> features,
  });
}

/// @nodoc
class _$MembershipPlanModelCopyWithImpl<$Res, $Val extends MembershipPlanModel>
    implements $MembershipPlanModelCopyWith<$Res> {
  _$MembershipPlanModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MembershipPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? durationDays = null,
    Object? features = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as double,
            durationDays: null == durationDays
                ? _value.durationDays
                : durationDays // ignore: cast_nullable_to_non_nullable
                      as int,
            features: null == features
                ? _value.features
                : features // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MembershipPlanModelImplCopyWith<$Res>
    implements $MembershipPlanModelCopyWith<$Res> {
  factory _$$MembershipPlanModelImplCopyWith(
    _$MembershipPlanModelImpl value,
    $Res Function(_$MembershipPlanModelImpl) then,
  ) = __$$MembershipPlanModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    double price,
    int durationDays,
    List<String> features,
  });
}

/// @nodoc
class __$$MembershipPlanModelImplCopyWithImpl<$Res>
    extends _$MembershipPlanModelCopyWithImpl<$Res, _$MembershipPlanModelImpl>
    implements _$$MembershipPlanModelImplCopyWith<$Res> {
  __$$MembershipPlanModelImplCopyWithImpl(
    _$MembershipPlanModelImpl _value,
    $Res Function(_$MembershipPlanModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MembershipPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? durationDays = null,
    Object? features = null,
  }) {
    return _then(
      _$MembershipPlanModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as double,
        durationDays: null == durationDays
            ? _value.durationDays
            : durationDays // ignore: cast_nullable_to_non_nullable
                  as int,
        features: null == features
            ? _value._features
            : features // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MembershipPlanModelImpl implements _MembershipPlanModel {
  const _$MembershipPlanModelImpl({
    required this.id,
    required this.name,
    required this.price,
    required this.durationDays,
    required final List<String> features,
  }) : _features = features;

  factory _$MembershipPlanModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MembershipPlanModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final double price;
  @override
  final int durationDays;
  final List<String> _features;
  @override
  List<String> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  @override
  String toString() {
    return 'MembershipPlanModel(id: $id, name: $name, price: $price, durationDays: $durationDays, features: $features)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MembershipPlanModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.durationDays, durationDays) ||
                other.durationDays == durationDays) &&
            const DeepCollectionEquality().equals(other._features, _features));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    price,
    durationDays,
    const DeepCollectionEquality().hash(_features),
  );

  /// Create a copy of MembershipPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MembershipPlanModelImplCopyWith<_$MembershipPlanModelImpl> get copyWith =>
      __$$MembershipPlanModelImplCopyWithImpl<_$MembershipPlanModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MembershipPlanModelImplToJson(this);
  }
}

abstract class _MembershipPlanModel implements MembershipPlanModel {
  const factory _MembershipPlanModel({
    required final String id,
    required final String name,
    required final double price,
    required final int durationDays,
    required final List<String> features,
  }) = _$MembershipPlanModelImpl;

  factory _MembershipPlanModel.fromJson(Map<String, dynamic> json) =
      _$MembershipPlanModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  double get price;
  @override
  int get durationDays;
  @override
  List<String> get features;

  /// Create a copy of MembershipPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MembershipPlanModelImplCopyWith<_$MembershipPlanModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
