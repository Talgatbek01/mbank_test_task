import 'package:flutter/material.dart';

import 'app.dart';

Future<Widget> initApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  return App();
}
