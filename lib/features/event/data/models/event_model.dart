import '../../domain/entities/event_entity.dart';

class EventModel extends EventEntity {
  const EventModel({
    required super.name,
    required super.description,
    required super.date,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) {
    return EventModel(
      name: json['event_name'],
      description: json['description'],
      date: DateTime.parse(json['date']),
    );
  }
}
