import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/event_entity.dart';
import '../../domain/use_cases/event_use_cases.dart';

part 'event_state.dart';

@injectable
class EventCubit extends Cubit<EventState> {
  final EventUseCases eventUseCases;

  EventCubit(this.eventUseCases) : super(EventState());

  Future<void> getEventList(EventParams params) async {
    emit(state.copyWith(status: EventStatus.initial));

    final result = await eventUseCases(params);

    result.fold(
      (failure) {
        emit(state.copyWith(status: EventStatus.error, error: failure.message));
      },
      (events) {
        emit(state.copyWith(status: EventStatus.success, events: events));
      },
    );
  }
}
