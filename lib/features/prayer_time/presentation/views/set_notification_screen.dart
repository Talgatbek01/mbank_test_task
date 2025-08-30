import 'package:flutter/material.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/services/notification/notification_entity.dart';
import '../../../../core/services/notification/notification_service.dart';

class SetNotificationScreen extends StatefulWidget {
  const SetNotificationScreen({super.key});

  @override
  State<SetNotificationScreen> createState() => _SetNotificationScreenState();
}

class _SetNotificationScreenState extends State<SetNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    final notificationService = getIt<NotificationService>();

    return Scaffold(
      appBar: AppBar(title: const Text('Set Notification')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                notificationService.showNotification(
                  ImmediateNotificationEntity(
                    title: 'Гооооол! `45минуте',
                    body: 'Талгат',
                    soundName: 'goal',
                  ),
                );
              },
              child: Text('Гол'),
            ),
            ElevatedButton(
              onPressed: () {
                notificationService.showNotification(
                  ImmediateNotificationEntity(
                    title: 'Матч окончен',
                    body: 'Результат 2:1',
                    soundName: 'game_finished',
                  ),
                );
              },
              child: Text('Закончить матч'),
            ),
            ElevatedButton(
              onPressed: () {
                notificationService.showNotification(
                  ImmediateNotificationEntity(
                    title: 'Просто уведомление',
                    body: 'Какой-то текст',
                    soundName: 'cute',
                  ),
                );
              },
              child: Text('Обычное уведомление'),
            ),
          ],
        ),
      ),
    );
  }

  // BlocBuilder<PrayerCubit, PrayerState> _prayerTimes() {
  //   return BlocBuilder<PrayerCubit, PrayerState>(
  //     buildWhen: (previous, current) {
  //       return previous.prayerTimes != current.prayerTimes;
  //     },

  //     builder: (context, state) {
  //       switch (state.status) {
  //         case PrayerStatus.loading:
  //           return Center(child: CircularProgressIndicator());

  //         case PrayerStatus.loaded:
  //           return ListView.builder(
  //             itemCount: state.prayerTimes.length,
  //             itemBuilder: (context, index) {
  //               final prayer = state.prayerTimes[index];
  //               var dateFormat = DateFormat('HH:mm:ss');
  //               final actualPrayer = PrayerTimeUtils.isCurrentPrayer(prayer, state.prayerTimes);

  //               return ListTile(
  //                 title: Text(prayer.title),
  //                 tileColor: actualPrayer ? Colors.black : null,
  //                 subtitle: Text(dateFormat.format(prayer.date)),
  //                 textColor: actualPrayer ? Colors.white : null,
  //               );
  //             },
  //           );

  //         case PrayerStatus.error:
  //           return Text('Error: ${state.error}');
  //       }
  //     },
  //   );
  // }
}
