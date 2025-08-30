import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_entity.freezed.dart';

@freezed
abstract class NotificationEntity with _$NotificationEntity {
  const factory NotificationEntity.immediate({
    required String title,
    required String body,
    String? payload,
    String? soundName,
  }) = ImmediateNotificationEntity;

  const factory NotificationEntity.scheduled({
    required String title,
    required String body,
    String? payload,
    String? soundName,
    required DateTime scheduledAt,
  }) = ScheduledNotificationEntity;
}
