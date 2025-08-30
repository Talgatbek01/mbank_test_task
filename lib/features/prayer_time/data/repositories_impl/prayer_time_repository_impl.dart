import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/prayer_time_entity.dart';
import '../../domain/repositories/prayer_time_repository.dart';
import '../datasources/prayer_time_remote_data_source.dart';
import '../mappers/prayer_time_mapper.dart';

@LazySingleton(as: PrayerTimeRepository)
class PrayerTimeRepositoryImpl implements PrayerTimeRepository {
  final PrayerTimeRemoteDataSource remoteDataSource;

  PrayerTimeRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<PrayerTimeEntity>>> getPrayerTimes() async {
    try {
      final models = await remoteDataSource.getPrayerTimes();
      final entities = models.map((e) => e.toEntity()).toList();
      return Right(entities);
    } catch (e) {
      return Left(ServerFailure('Server error'));
    }
  }
}
