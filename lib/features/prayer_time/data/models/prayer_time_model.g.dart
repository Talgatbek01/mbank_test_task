// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_time_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PrayerTimeModel _$PrayerTimeModelFromJson(Map<String, dynamic> json) =>
    _PrayerTimeModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      body: json['body'] as String,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$PrayerTimeModelToJson(_PrayerTimeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'date': instance.date.toIso8601String(),
    };
