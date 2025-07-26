import 'package:intl/intl.dart';

import '../../domain/entities/event_entity.dart';

class EventModel extends EventEntity {
  const EventModel({
    required super.name,
    required super.description,
    required super.date,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) {
    final formatter = DateFormat('dd-MM-yyyy');

    return EventModel(
      name: json['event_name'],
      description: json['description'],
      date: formatter.parse(json['date']),
    );
  }
}
