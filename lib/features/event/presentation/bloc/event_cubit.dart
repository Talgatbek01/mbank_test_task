import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/event_entity.dart';
import '../../domain/use_cases/event_use_cases.dart';

part 'event_state.dart';

class EventCubit extends Cubit<EventState> {
  final EventUseCases eventUseCases;

  EventCubit(this.eventUseCases) : super(EventState());

  Future<void> getEventList({
    required DateTime startDate,
    DateTime? endDate,
  }) async {
    try {
      emit(state.copyWith(status: EventStatus.initial));
      final events = await eventUseCases(
        startDate: startDate,
        endDate: endDate,
      );
      emit(state.copyWith(status: EventStatus.success, events: events));
    } on Failure catch (f) {
      emit(state.copyWith(status: EventStatus.error, error: f.error));
    } catch (_) {
      emit(state.copyWith(status: EventStatus.error));
    }
  }
}
