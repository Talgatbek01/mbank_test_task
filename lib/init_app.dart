import 'package:flutter/material.dart';

import 'app.dart';
import 'core/di/injection.dart';
import 'core/services/notification/notification_service.dart';

Future<Widget> initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDepencies();
  final notificationService = getIt<NotificationService>();
  await notificationService.initNotification();

  return App();
}
