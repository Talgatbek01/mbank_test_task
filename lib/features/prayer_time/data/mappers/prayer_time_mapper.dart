import '../../domain/entities/prayer_time_entity.dart';
import '../models/prayer_time_model.dart';

extension PrayerTimeModelMapper on PrayerTimeModel {
  PrayerTimeEntity toEntity() {
    return PrayerTimeEntity(id: id, title: title, body: body, date: date);
  }
}

extension PrayerTimeEntityMapper on PrayerTimeEntity {
  PrayerTimeModel toModel() {
    return PrayerTimeModel(id: id, title: title, body: body, date: date);
  }
}
