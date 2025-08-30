// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationEntity {

 String get title; String get body; String? get payload; String? get soundName;
/// Create a copy of NotificationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationEntityCopyWith<NotificationEntity> get copyWith => _$NotificationEntityCopyWithImpl<NotificationEntity>(this as NotificationEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationEntity&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.soundName, soundName) || other.soundName == soundName));
}


@override
int get hashCode => Object.hash(runtimeType,title,body,payload,soundName);

@override
String toString() {
  return 'NotificationEntity(title: $title, body: $body, payload: $payload, soundName: $soundName)';
}


}

/// @nodoc
abstract mixin class $NotificationEntityCopyWith<$Res>  {
  factory $NotificationEntityCopyWith(NotificationEntity value, $Res Function(NotificationEntity) _then) = _$NotificationEntityCopyWithImpl;
@useResult
$Res call({
 String title, String body, String? payload, String? soundName
});




}
/// @nodoc
class _$NotificationEntityCopyWithImpl<$Res>
    implements $NotificationEntityCopyWith<$Res> {
  _$NotificationEntityCopyWithImpl(this._self, this._then);

  final NotificationEntity _self;
  final $Res Function(NotificationEntity) _then;

/// Create a copy of NotificationEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? body = null,Object? payload = freezed,Object? soundName = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String?,soundName: freezed == soundName ? _self.soundName : soundName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationEntity].
extension NotificationEntityPatterns on NotificationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ImmediateNotificationEntity value)?  immediate,TResult Function( ScheduledNotificationEntity value)?  scheduled,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ImmediateNotificationEntity() when immediate != null:
return immediate(_that);case ScheduledNotificationEntity() when scheduled != null:
return scheduled(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ImmediateNotificationEntity value)  immediate,required TResult Function( ScheduledNotificationEntity value)  scheduled,}){
final _that = this;
switch (_that) {
case ImmediateNotificationEntity():
return immediate(_that);case ScheduledNotificationEntity():
return scheduled(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ImmediateNotificationEntity value)?  immediate,TResult? Function( ScheduledNotificationEntity value)?  scheduled,}){
final _that = this;
switch (_that) {
case ImmediateNotificationEntity() when immediate != null:
return immediate(_that);case ScheduledNotificationEntity() when scheduled != null:
return scheduled(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String title,  String body,  String? payload,  String? soundName)?  immediate,TResult Function( String title,  String body,  String? payload,  String? soundName,  DateTime scheduledAt)?  scheduled,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ImmediateNotificationEntity() when immediate != null:
return immediate(_that.title,_that.body,_that.payload,_that.soundName);case ScheduledNotificationEntity() when scheduled != null:
return scheduled(_that.title,_that.body,_that.payload,_that.soundName,_that.scheduledAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String title,  String body,  String? payload,  String? soundName)  immediate,required TResult Function( String title,  String body,  String? payload,  String? soundName,  DateTime scheduledAt)  scheduled,}) {final _that = this;
switch (_that) {
case ImmediateNotificationEntity():
return immediate(_that.title,_that.body,_that.payload,_that.soundName);case ScheduledNotificationEntity():
return scheduled(_that.title,_that.body,_that.payload,_that.soundName,_that.scheduledAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String title,  String body,  String? payload,  String? soundName)?  immediate,TResult? Function( String title,  String body,  String? payload,  String? soundName,  DateTime scheduledAt)?  scheduled,}) {final _that = this;
switch (_that) {
case ImmediateNotificationEntity() when immediate != null:
return immediate(_that.title,_that.body,_that.payload,_that.soundName);case ScheduledNotificationEntity() when scheduled != null:
return scheduled(_that.title,_that.body,_that.payload,_that.soundName,_that.scheduledAt);case _:
  return null;

}
}

}

/// @nodoc


class ImmediateNotificationEntity implements NotificationEntity {
  const ImmediateNotificationEntity({required this.title, required this.body, this.payload, this.soundName});
  

@override final  String title;
@override final  String body;
@override final  String? payload;
@override final  String? soundName;

/// Create a copy of NotificationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImmediateNotificationEntityCopyWith<ImmediateNotificationEntity> get copyWith => _$ImmediateNotificationEntityCopyWithImpl<ImmediateNotificationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImmediateNotificationEntity&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.soundName, soundName) || other.soundName == soundName));
}


@override
int get hashCode => Object.hash(runtimeType,title,body,payload,soundName);

@override
String toString() {
  return 'NotificationEntity.immediate(title: $title, body: $body, payload: $payload, soundName: $soundName)';
}


}

/// @nodoc
abstract mixin class $ImmediateNotificationEntityCopyWith<$Res> implements $NotificationEntityCopyWith<$Res> {
  factory $ImmediateNotificationEntityCopyWith(ImmediateNotificationEntity value, $Res Function(ImmediateNotificationEntity) _then) = _$ImmediateNotificationEntityCopyWithImpl;
@override @useResult
$Res call({
 String title, String body, String? payload, String? soundName
});




}
/// @nodoc
class _$ImmediateNotificationEntityCopyWithImpl<$Res>
    implements $ImmediateNotificationEntityCopyWith<$Res> {
  _$ImmediateNotificationEntityCopyWithImpl(this._self, this._then);

  final ImmediateNotificationEntity _self;
  final $Res Function(ImmediateNotificationEntity) _then;

/// Create a copy of NotificationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? body = null,Object? payload = freezed,Object? soundName = freezed,}) {
  return _then(ImmediateNotificationEntity(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String?,soundName: freezed == soundName ? _self.soundName : soundName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ScheduledNotificationEntity implements NotificationEntity {
  const ScheduledNotificationEntity({required this.title, required this.body, this.payload, this.soundName, required this.scheduledAt});
  

@override final  String title;
@override final  String body;
@override final  String? payload;
@override final  String? soundName;
 final  DateTime scheduledAt;

/// Create a copy of NotificationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduledNotificationEntityCopyWith<ScheduledNotificationEntity> get copyWith => _$ScheduledNotificationEntityCopyWithImpl<ScheduledNotificationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduledNotificationEntity&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.soundName, soundName) || other.soundName == soundName)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt));
}


@override
int get hashCode => Object.hash(runtimeType,title,body,payload,soundName,scheduledAt);

@override
String toString() {
  return 'NotificationEntity.scheduled(title: $title, body: $body, payload: $payload, soundName: $soundName, scheduledAt: $scheduledAt)';
}


}

/// @nodoc
abstract mixin class $ScheduledNotificationEntityCopyWith<$Res> implements $NotificationEntityCopyWith<$Res> {
  factory $ScheduledNotificationEntityCopyWith(ScheduledNotificationEntity value, $Res Function(ScheduledNotificationEntity) _then) = _$ScheduledNotificationEntityCopyWithImpl;
@override @useResult
$Res call({
 String title, String body, String? payload, String? soundName, DateTime scheduledAt
});




}
/// @nodoc
class _$ScheduledNotificationEntityCopyWithImpl<$Res>
    implements $ScheduledNotificationEntityCopyWith<$Res> {
  _$ScheduledNotificationEntityCopyWithImpl(this._self, this._then);

  final ScheduledNotificationEntity _self;
  final $Res Function(ScheduledNotificationEntity) _then;

/// Create a copy of NotificationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? body = null,Object? payload = freezed,Object? soundName = freezed,Object? scheduledAt = null,}) {
  return _then(ScheduledNotificationEntity(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String?,soundName: freezed == soundName ? _self.soundName : soundName // ignore: cast_nullable_to_non_nullable
as String?,scheduledAt: null == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
