import 'package:intl/intl.dart';

import '../../features/prayer_time/domain/entities/prayer_time_entity.dart';

final kDateFormatter = DateFormat('dd-MM-yyyy');

class PrayerTimeUtils {
  /// Проверяет, актуален ли текущий намаз
  static bool isCurrentPrayer(
    PrayerTimeEntity prayer,
    List<PrayerTimeEntity> allPrayers,
  ) {
    final now = DateTime.now();
    final index = allPrayers.indexOf(prayer);

    // Определяем время конца текущего намаза
    DateTime endTime;
    if (index < allPrayers.length - 1) {
      endTime = allPrayers[index + 1].date;
    } else {
      // Если последний, до полуночи или до следующего дня
      endTime = prayer.date.add(const Duration(hours: 24));
    }

    return now.isAfter(prayer.date) && now.isBefore(endTime);
  }
}
