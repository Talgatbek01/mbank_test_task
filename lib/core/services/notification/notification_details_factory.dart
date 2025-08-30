// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// final Map<String, NotificationDetails> _notificationDetailsMap = {
//   'goal': NotificationDetails(
//     android: AndroidNotificationDetails(
//       'goal_channel_id',
//       'Goal Notifications',
//       channelDescription: 'Notifications for achieving goals',
//       importance: Importance.max,
//       priority: Priority.high,
//       sound: RawResourceAndroidNotificationSound('goal_sound'),
//       playSound: true,
//     ),
//   ),
//   'game_finished': NotificationDetails(
//     android: AndroidNotificationDetails(
//       'game_channel_id',
//       'Game Notifications',
//       channelDescription: 'Notifications for game events',
//       importance: Importance.max,
//       priority: Priority.high,
//       sound: RawResourceAndroidNotificationSound('game_finished_sound'),
//       playSound: true,
//     ),
//   ),
//   'default': NotificationDetails(
//     android: AndroidNotificationDetails(
//       'default_channel_id',
//       'Default Notifications',
//       channelDescription: 'Default notifications',
//       importance: Importance.max,
//       priority: Priority.high,
//       sound: RawResourceAndroidNotificationSound('default_sound'),
//       playSound: true,
//     ),
//   ),
// };

// NotificationDetails getNotificationDetails(String? type) {
//   return _notificationDetailsMap[type] ?? _notificationDetailsMap['default']!;
// }
