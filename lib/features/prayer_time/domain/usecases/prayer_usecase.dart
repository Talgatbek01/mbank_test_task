import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/prayer_time_entity.dart';
import '../repositories/prayer_time_repository.dart';

@LazySingleton()
class PrayerUseCase implements UseCase<List<PrayerTimeEntity>, NoParams> {
  final PrayerTimeRepository repository;

  PrayerUseCase(this.repository);

  @override
  Future<Either<Failure, List<PrayerTimeEntity>>> call(NoParams params) async {
    return await repository.getPrayerTimes();
  }
}
