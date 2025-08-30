// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prayer_time_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PrayerTimeModel {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'title') String get title;@JsonKey(name: 'body') String get body;@JsonKey(name: 'date') DateTime get date;
/// Create a copy of PrayerTimeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrayerTimeModelCopyWith<PrayerTimeModel> get copyWith => _$PrayerTimeModelCopyWithImpl<PrayerTimeModel>(this as PrayerTimeModel, _$identity);

  /// Serializes this PrayerTimeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayerTimeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,body,date);

@override
String toString() {
  return 'PrayerTimeModel(id: $id, title: $title, body: $body, date: $date)';
}


}

/// @nodoc
abstract mixin class $PrayerTimeModelCopyWith<$Res>  {
  factory $PrayerTimeModelCopyWith(PrayerTimeModel value, $Res Function(PrayerTimeModel) _then) = _$PrayerTimeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'title') String title,@JsonKey(name: 'body') String body,@JsonKey(name: 'date') DateTime date
});




}
/// @nodoc
class _$PrayerTimeModelCopyWithImpl<$Res>
    implements $PrayerTimeModelCopyWith<$Res> {
  _$PrayerTimeModelCopyWithImpl(this._self, this._then);

  final PrayerTimeModel _self;
  final $Res Function(PrayerTimeModel) _then;

/// Create a copy of PrayerTimeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? body = null,Object? date = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [PrayerTimeModel].
extension PrayerTimeModelPatterns on PrayerTimeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrayerTimeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrayerTimeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrayerTimeModel value)  $default,){
final _that = this;
switch (_that) {
case _PrayerTimeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrayerTimeModel value)?  $default,){
final _that = this;
switch (_that) {
case _PrayerTimeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'body')  String body, @JsonKey(name: 'date')  DateTime date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrayerTimeModel() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.date);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'body')  String body, @JsonKey(name: 'date')  DateTime date)  $default,) {final _that = this;
switch (_that) {
case _PrayerTimeModel():
return $default(_that.id,_that.title,_that.body,_that.date);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'body')  String body, @JsonKey(name: 'date')  DateTime date)?  $default,) {final _that = this;
switch (_that) {
case _PrayerTimeModel() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PrayerTimeModel implements PrayerTimeModel {
  const _PrayerTimeModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'title') required this.title, @JsonKey(name: 'body') required this.body, @JsonKey(name: 'date') required this.date});
  factory _PrayerTimeModel.fromJson(Map<String, dynamic> json) => _$PrayerTimeModelFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'body') final  String body;
@override@JsonKey(name: 'date') final  DateTime date;

/// Create a copy of PrayerTimeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrayerTimeModelCopyWith<_PrayerTimeModel> get copyWith => __$PrayerTimeModelCopyWithImpl<_PrayerTimeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PrayerTimeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrayerTimeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,body,date);

@override
String toString() {
  return 'PrayerTimeModel(id: $id, title: $title, body: $body, date: $date)';
}


}

/// @nodoc
abstract mixin class _$PrayerTimeModelCopyWith<$Res> implements $PrayerTimeModelCopyWith<$Res> {
  factory _$PrayerTimeModelCopyWith(_PrayerTimeModel value, $Res Function(_PrayerTimeModel) _then) = __$PrayerTimeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'title') String title,@JsonKey(name: 'body') String body,@JsonKey(name: 'date') DateTime date
});




}
/// @nodoc
class __$PrayerTimeModelCopyWithImpl<$Res>
    implements _$PrayerTimeModelCopyWith<$Res> {
  __$PrayerTimeModelCopyWithImpl(this._self, this._then);

  final _PrayerTimeModel _self;
  final $Res Function(_PrayerTimeModel) _then;

/// Create a copy of PrayerTimeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? body = null,Object? date = null,}) {
  return _then(_PrayerTimeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
