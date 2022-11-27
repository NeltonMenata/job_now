import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_now/pages/welcome/welcome_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(const WelcomePage());
}
