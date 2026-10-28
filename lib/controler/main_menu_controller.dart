import 'package:flutter/material.dart';
import 'package:flutter_application_testing/menu/history.dart';
import 'package:flutter_application_testing/menu/home.dart';
import 'package:flutter_application_testing/menu/profile.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [Home(), History(), Profile()];
}
