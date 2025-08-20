import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/event_entity.dart';
import '../../domain/repositories/event_repository.dart';
import '../../domain/use_cases/event_use_cases.dart';
import '../datasources/event_remote_data_source.dart';

@LazySingleton(as: EventRepository)
class EventRepositoryImpl implements EventRepository {
  final EventRemoteDataSource remoteDataSource;

  EventRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<EventEntity>>> getEvents(
    EventParams params,
  ) async {
    try {
      final remoteEvents = await remoteDataSource.getEvents(params);
      return Right(remoteEvents);
    } on ServerException {
      return Left(ServerFailure('Server failed'));
    }
  }
}


/* 

if (await networkInfo.isConnected) {
      try {
        final remoteEvents = await remoteDataSource.getEvents(params);
        return Right(remoteEvents);
      } on ServerException {
        return Left(ServerFailure('Server failed'));
      }
    } else {
      try {
        final localEvents = await localDataSource.getEventList();
        return Right(localEvents);
      } on CacheException {
        return Left(CacheFailure('Cache Failed'));
      }
    }

*/