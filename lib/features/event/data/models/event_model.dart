import '../../../../core/utils/utils.dart';
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
      date: kDateFormatter.parse(json['date']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'event_name': name,
      'description': description,
      'date': kDateFormatter.format(date),
    };
  }
}
