import '../models/event_model.dart';

abstract class EventLocalDataSource {
  Future<List<EventModel>> getEventList();
}
