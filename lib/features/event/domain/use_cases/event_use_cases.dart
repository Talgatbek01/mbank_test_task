import '../entities/event_entity.dart';
import '../repositories/event_repository.dart';

class EventUseCases {
  final EventRepository eventRepository;

  EventUseCases(this.eventRepository);

  Future<List<EventEntity>> call({
    required DateTime startDate,
    DateTime? endDate,
  }) async {
    return await eventRepository.fetchEvents();
  }
}
