import 'package:equatable/equatable.dart';

class PrayerTimeEntity extends Equatable {
  final int id;
  final String title;
  final String body;
  final DateTime date;

  const PrayerTimeEntity({
    required this.id,
    required this.title,
    required this.body,
    required this.date,
  });

  @override
  List<Object?> get props => [id, title, body, date];
}
