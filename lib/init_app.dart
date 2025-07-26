import 'package:flutter/material.dart';

import 'app.dart';
import 'core/service_locator/get_it.dart';

Future<Widget> initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServices();

  return App();
}
