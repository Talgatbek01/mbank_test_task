import 'dart:developer';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import 'alarm_permission_service.dart';
import 'notification_entity.dart';
import 'notification_service.dart';

@LazySingleton(as: NotificationService)
class NotificationServiceImpl implements NotificationService {
  final _plugin = FlutterLocalNotificationsPlugin();

  @override
  Future<void> initNotification() async {
    tz.initializeTimeZones();

    const androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
    const initSettings = InitializationSettings(android: androidSettings);
    await _plugin.initialize(initSettings);
    await _plugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission();
    await AlarmPermissionHelper.requestExactAlarmPermission();
  }

  @override
  Future<void> scheduledNotification(ScheduledNotificationEntity notification) async {
    final scheduledDate = tz.TZDateTime.from(notification.scheduledAt, tz.local);

    await _plugin.zonedSchedule(
      notification.hashCode,
      notification.title,
      notification.body,
      scheduledDate,
      getNotificationDetails(notification.soundName),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      matchDateTimeComponents: DateTimeComponents.time,
    );
  }

  @override
  Future<void> showNotification(ImmediateNotificationEntity notification) async {
    log('Showing notification: $notification');
    await _plugin.show(
      notification.hashCode,
      notification.title,
      notification.body,
      getNotificationDetails(notification.soundName),
    );
  }
}

NotificationDetails getNotificationDetails(String? soundName) {
  final channelId = '${soundName ?? 'default'}_channel';
  final channelName = '${soundName ?? 'Default'} Notifications';

  log('$channelId\n$channelName');

  return NotificationDetails(
    android: AndroidNotificationDetails(
      channelId,
      channelName,
      channelDescription: 'Notifications with sound $soundName',
      importance: Importance.max,
      priority: Priority.high,
      sound: soundName != null ? RawResourceAndroidNotificationSound(soundName) : null,
      playSound: true,
    ),
  );
}
