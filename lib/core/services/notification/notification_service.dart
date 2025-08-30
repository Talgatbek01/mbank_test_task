import 'notification_entity.dart';

abstract class NotificationService {
  Future<void> initNotification();
  Future<void> scheduledNotification(ScheduledNotificationEntity notification);
  Future<void> showNotification(ImmediateNotificationEntity notification);
}
