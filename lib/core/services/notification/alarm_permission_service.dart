import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class AlarmPermissionHelper {
  static const _channel = MethodChannel("alarm_permission");

  static Future<void> requestExactAlarmPermission() async {
    try {
      await _channel.invokeMethod("requestExactAlarmPermission");
    } catch (e) {
      debugPrint("Ошибка при запросе разрешения: $e");
    }
  }
}
