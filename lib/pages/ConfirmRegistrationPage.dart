import 'package:flutter/material.dart';
import 'package:flutter_application_testing/controler/confrim_controler.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmRegistrationController());

    return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama: " + controller.nama,
              style: TextStyle(fontSize: 18, color: Colors.green),
            ),
            SizedBox(height: 8),
            Text(
              "Alamat: " + controller.alamat,
              style: TextStyle(fontSize: 18, color: Colors.green),
            ),
            SizedBox(height: 8),
            Text(
              "Jenis Kelamin: " + controller.jenisKelamin,
              style: TextStyle(fontSize: 18, color: Colors.green),
            ),
            SizedBox(height: 8),
            Text(
              "Nomer WA: " + controller.nomerWa,
              style: TextStyle(fontSize: 18, color: Colors.green),
            ),
            SizedBox(height: 8),
            Text(
              "Email: " + controller.email,
              style: TextStyle(fontSize: 18, color: Colors.green),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Oke"),
            ),
          ],
        ),
      ),
    );
  }
}
