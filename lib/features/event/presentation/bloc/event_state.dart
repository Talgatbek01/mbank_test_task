part of 'event_cubit.dart';

enum EventStatus { initial, success, error }

final class EventState extends Equatable {
  final EventStatus status;
  final List<EventEntity> events;
  final String? error;

  const EventState({
    this.status = EventStatus.initial,
    this.events = const [],
    this.error,
  });

  EventState copyWith({
    EventStatus? status,
    List<EventEntity>? events,
    String? error,
  }) {
    return EventState(
      status: status ?? this.status,
      events: events ?? this.events,
      error: error,
    );
  }

  @override
  List<Object?> get props => [status, events, error];
}
