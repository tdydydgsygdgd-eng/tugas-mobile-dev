import 'package:flutter/material.dart';
import 'package:flutter_application_testing/pages/ConfirmRegistrationPage.dart';
import 'package:flutter_application_testing/pages/RegistrationPage.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class Routes {
  // list pages yang ada di aplikasi
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  // dll login , kalkulator

  // kita tampung kedalam array yang akan kita pasang ke main dart
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
    // others page here dll
  ];
}
