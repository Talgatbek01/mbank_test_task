import 'package:flutter/material.dart';

import 'app.dart';
import 'core/di/injection.dart';

Future<Widget> initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDepencies();

  return App();
}
