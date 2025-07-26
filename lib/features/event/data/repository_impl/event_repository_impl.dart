import '../../domain/entities/event_entity.dart';
import '../../domain/repositories/event_repository.dart';
import '../datasources/event_datasource.dart';

class EventRepositoryImpl implements EventRepository {
  final EventDatasource eventDatasource;

  EventRepositoryImpl(this.eventDatasource);

  @override
  Future<List<EventEntity>> fetchEvents({
    required DateTime startDate,
    DateTime? endDate,
  }) async {
    return await eventDatasource.getEventList(
      startDate: startDate,
      endDate: endDate,
    );
  }
}
