import 'package:flutter/material.dart';
import 'package:flutter_application_testing/kalkulator_page.dart';
import 'package:flutter_application_testing/pages/Calkulator.dart';
import 'package:flutter_application_testing/pages/loginclonefix.dart';
import 'package:get/get.dart';

import 'login_clone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: KalkulatorPage());
  }
}
