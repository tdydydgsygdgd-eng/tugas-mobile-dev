import 'package:flutter/material.dart';
import 'package:flutter_application_testing/controler/main_menu_controller.dart';
import 'package:flutter_application_testing/pages/menu_drawe.dart';
import 'package:get/get.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final menuController = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text(
            _getTitle(menuController.selectedIndex.value),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        drawer: MenuDrawer(),
        body: IndexedStack(
          index: menuController.selectedIndex.value,
          children: menuController.listPages,
        ),
      ),
    );
  }

  String _getTitle(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'History';
      case 2:
        return 'Profile';
      default:
        return 'Menu';
    }
  }
}
