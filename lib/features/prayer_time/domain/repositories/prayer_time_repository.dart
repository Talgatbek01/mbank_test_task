import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/prayer_time_entity.dart';

abstract class PrayerTimeRepository {
  Future<Either<Failure, List<PrayerTimeEntity>>> getPrayerTimes();
}
