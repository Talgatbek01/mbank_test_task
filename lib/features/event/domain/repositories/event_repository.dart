import '../entities/event_entity.dart';

abstract class EventRepository {
  Future<List<EventEntity>> fetchEvents({
    required DateTime startDate,
    DateTime? endDate,
  });
}
