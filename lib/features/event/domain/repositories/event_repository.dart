import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/event_entity.dart';
import '../use_cases/event_use_cases.dart';

abstract class EventRepository {
  Future<Either<Failure, List<EventEntity>>> getEvents(EventParams params);
}
