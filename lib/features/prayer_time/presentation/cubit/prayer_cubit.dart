import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/services/notification/notification_entity.dart';
import '../../../../core/services/notification/notification_service.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/prayer_time_entity.dart';
import '../../domain/usecases/prayer_usecase.dart';

part 'prayer_state.dart';

@injectable
class PrayerCubit extends Cubit<PrayerState> {
  final PrayerUseCase useCase;
  final NotificationService notificationService;

  PrayerCubit({required this.useCase, required this.notificationService})
    : super(const PrayerState());

  Future<void> fetchPrayerTimes() async {
    print('Fetching prayer times...');
    emit(state.copyWith(status: PrayerStatus.loading));

    final result = await useCase(NoParams());

    result.fold(
      (failure) {
        emit(state.copyWith(status: PrayerStatus.error, error: failure.message));
      },
      (times) async {
        emit(state.copyWith(status: PrayerStatus.loaded, prayerTimes: times));
        for (var prayer in times) {
          notificationService.scheduledNotification(
            ScheduledNotificationEntity(
              title: prayer.title,
              body: prayer.body,
              scheduledAt: prayer.date,
            ),
          );
        }
      },
    );
  }
}
