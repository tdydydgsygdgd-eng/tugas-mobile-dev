import 'package:flutter/material.dart';
import 'package:flutter_application_testing/controler/main_menu_controller.dart';
import 'package:get/get.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final menuController = Get.find<MainMenuController>();

    return Drawer(
      child: Obx(
        () => ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 35, color: Colors.blue),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Menu Utama',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home_filled,
                color: menuController.selectedIndex.value == 0
                    ? Colors.blue
                    : Colors.grey,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  color: menuController.selectedIndex.value == 0
                      ? Colors.blue
                      : Colors.black,
                  fontWeight: menuController.selectedIndex.value == 0
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
              selected: menuController.selectedIndex.value == 0,
              selectedTileColor: Colors.blue.withOpacity(0.1),
              onTap: () {
                menuController.changePage(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.history,
                color: menuController.selectedIndex.value == 1
                    ? Colors.blue
                    : Colors.grey,
              ),
              title: Text(
                'History',
                style: TextStyle(
                  color: menuController.selectedIndex.value == 1
                      ? Colors.blue
                      : Colors.black,
                  fontWeight: menuController.selectedIndex.value == 1
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
              selected: menuController.selectedIndex.value == 1,
              selectedTileColor: Colors.blue.withOpacity(0.1),
              onTap: () {
                menuController.changePage(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: menuController.selectedIndex.value == 2
                    ? Colors.blue
                    : Colors.grey,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                  color: menuController.selectedIndex.value == 2
                      ? Colors.blue
                      : Colors.black,
                  fontWeight: menuController.selectedIndex.value == 2
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
              selected: menuController.selectedIndex.value == 2,
              selectedTileColor: Colors.blue.withOpacity(0.1),
              onTap: () {
                menuController.changePage(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
