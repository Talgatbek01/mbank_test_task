import 'package:equatable/equatable.dart';

class EventEntity extends Equatable {
  final String name;
  final String description;
  final DateTime date;

  const EventEntity({
    required this.name,
    required this.description,
    required this.date,
  });

  @override
  List<Object?> get props => [name, description, date];
}
