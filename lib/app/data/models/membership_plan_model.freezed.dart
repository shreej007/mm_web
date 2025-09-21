// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'membership_plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MembershipPlanModel {

 String get id; String get name; double get price; int get durationDays; List<String> get features;
/// Create a copy of MembershipPlanModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MembershipPlanModelCopyWith<MembershipPlanModel> get copyWith => _$MembershipPlanModelCopyWithImpl<MembershipPlanModel>(this as MembershipPlanModel, _$identity);

  /// Serializes this MembershipPlanModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MembershipPlanModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.durationDays, durationDays) || other.durationDays == durationDays)&&const DeepCollectionEquality().equals(other.features, features));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,price,durationDays,const DeepCollectionEquality().hash(features));

@override
String toString() {
  return 'MembershipPlanModel(id: $id, name: $name, price: $price, durationDays: $durationDays, features: $features)';
}


}

/// @nodoc
abstract mixin class $MembershipPlanModelCopyWith<$Res>  {
  factory $MembershipPlanModelCopyWith(MembershipPlanModel value, $Res Function(MembershipPlanModel) _then) = _$MembershipPlanModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, double price, int durationDays, List<String> features
});




}
/// @nodoc
class _$MembershipPlanModelCopyWithImpl<$Res>
    implements $MembershipPlanModelCopyWith<$Res> {
  _$MembershipPlanModelCopyWithImpl(this._self, this._then);

  final MembershipPlanModel _self;
  final $Res Function(MembershipPlanModel) _then;

/// Create a copy of MembershipPlanModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? price = null,Object? durationDays = null,Object? features = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,durationDays: null == durationDays ? _self.durationDays : durationDays // ignore: cast_nullable_to_non_nullable
as int,features: null == features ? _self.features : features // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [MembershipPlanModel].
extension MembershipPlanModelPatterns on MembershipPlanModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MembershipPlanModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MembershipPlanModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MembershipPlanModel value)  $default,){
final _that = this;
switch (_that) {
case _MembershipPlanModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MembershipPlanModel value)?  $default,){
final _that = this;
switch (_that) {
case _MembershipPlanModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  double price,  int durationDays,  List<String> features)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MembershipPlanModel() when $default != null:
return $default(_that.id,_that.name,_that.price,_that.durationDays,_that.features);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  double price,  int durationDays,  List<String> features)  $default,) {final _that = this;
switch (_that) {
case _MembershipPlanModel():
return $default(_that.id,_that.name,_that.price,_that.durationDays,_that.features);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  double price,  int durationDays,  List<String> features)?  $default,) {final _that = this;
switch (_that) {
case _MembershipPlanModel() when $default != null:
return $default(_that.id,_that.name,_that.price,_that.durationDays,_that.features);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MembershipPlanModel implements MembershipPlanModel {
  const _MembershipPlanModel({required this.id, required this.name, required this.price, required this.durationDays, required final  List<String> features}): _features = features;
  factory _MembershipPlanModel.fromJson(Map<String, dynamic> json) => _$MembershipPlanModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  double price;
@override final  int durationDays;
 final  List<String> _features;
@override List<String> get features {
  if (_features is EqualUnmodifiableListView) return _features;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_features);
}


/// Create a copy of MembershipPlanModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MembershipPlanModelCopyWith<_MembershipPlanModel> get copyWith => __$MembershipPlanModelCopyWithImpl<_MembershipPlanModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MembershipPlanModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MembershipPlanModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.durationDays, durationDays) || other.durationDays == durationDays)&&const DeepCollectionEquality().equals(other._features, _features));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,price,durationDays,const DeepCollectionEquality().hash(_features));

@override
String toString() {
  return 'MembershipPlanModel(id: $id, name: $name, price: $price, durationDays: $durationDays, features: $features)';
}


}

/// @nodoc
abstract mixin class _$MembershipPlanModelCopyWith<$Res> implements $MembershipPlanModelCopyWith<$Res> {
  factory _$MembershipPlanModelCopyWith(_MembershipPlanModel value, $Res Function(_MembershipPlanModel) _then) = __$MembershipPlanModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, double price, int durationDays, List<String> features
});




}
/// @nodoc
class __$MembershipPlanModelCopyWithImpl<$Res>
    implements _$MembershipPlanModelCopyWith<$Res> {
  __$MembershipPlanModelCopyWithImpl(this._self, this._then);

  final _MembershipPlanModel _self;
  final $Res Function(_MembershipPlanModel) _then;

/// Create a copy of MembershipPlanModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? price = null,Object? durationDays = null,Object? features = null,}) {
  return _then(_MembershipPlanModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,durationDays: null == durationDays ? _self.durationDays : durationDays // ignore: cast_nullable_to_non_nullable
as int,features: null == features ? _self._features : features // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
