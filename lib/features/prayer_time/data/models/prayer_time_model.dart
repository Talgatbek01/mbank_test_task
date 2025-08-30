import 'package:freezed_annotation/freezed_annotation.dart';

part 'prayer_time_model.g.dart';
part 'prayer_time_model.freezed.dart';

@freezed
abstract class PrayerTimeModel with _$PrayerTimeModel {
  const factory PrayerTimeModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'body') required String body,
    @JsonKey(name: 'date') required DateTime date,
  }) = _PrayerTimeModel;

  factory PrayerTimeModel.fromJson(Map<String, dynamic> json) =>
      _$PrayerTimeModelFromJson(json);
}
