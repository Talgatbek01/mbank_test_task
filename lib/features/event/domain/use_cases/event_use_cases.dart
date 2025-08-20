import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/event_entity.dart';

import '../repositories/event_repository.dart';

@LazySingleton()
class EventUseCases implements UseCase<List<EventEntity>, EventParams> {
  final EventRepository eventRepository;

  EventUseCases(this.eventRepository);

  @override
  Future<Either<Failure, List<EventEntity>>> call(EventParams params) async {
    return await eventRepository.getEvents(params);
  }
}

class EventParams extends Equatable {
  final DateTime startDate;
  final DateTime? endDate;

  const EventParams({required this.startDate, this.endDate});

  @override
  List<Object?> get props => [startDate, endDate];
}
