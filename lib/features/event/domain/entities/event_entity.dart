import 'package:equatable/equatable.dart';

class EventEntity extends Equatable {
  final String eventName;
  final String description;
  final DateTime date;

  const EventEntity({
    required this.eventName,
    required this.description,
    required this.date,
  });

  @override
  List<Object?> get props => [eventName, description, date];
}
