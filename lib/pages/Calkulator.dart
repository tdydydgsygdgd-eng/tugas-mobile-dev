import 'package:flutter/services.dart';
import 'package:flutter_application_testing/compones/my_texfiledkal.dart';
import 'package:flutter_application_testing/controler/controler_calkulatro.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KalkulatorPage extends StatelessWidget {
  KalkulatorPage({super.key});

  final controller = Get.put(ControlerCalkulatro());
  @override
  Widget build(BuildContext context) {
    TextEditingController txtangka1 = TextEditingController();
    TextEditingController txtangka2 = TextEditingController();

    bool cekInput() {
      if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Kedua angka harus diisi terlebih dahulu!"),
          ),
        );

        return false;
      }

      return true;
    }

    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator")),
      body: Column(
        children: [
          MyTextfield(
            myHint: "input angka 1",
            txtController: txtangka1,
            radius: 10,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
          MyTextfield(
            myHint: "input angka 2",
            txtController: txtangka2,
            radius: 10,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (!cekInput()) return;
                    controller.tambah(
                      double.parse(txtangka1.text.toString()),
                      double.parse(txtangka2.text.toString()),
                    );
                  },
                  child: Text("+"),
                ),

                ElevatedButton(
                  onPressed: () {
                    if (!cekInput()) return;
                    controller.kurang(
                      double.parse(txtangka1.text.toString()),
                      double.parse(txtangka2.text.toString()),
                    );
                  },
                  child: Text("-"),
                ),

                ElevatedButton(
                  onPressed: () {
                    if (!cekInput()) return;
                    controller.kali(
                      double.parse(txtangka1.text.toString()),
                      double.parse(txtangka2.text.toString()),
                    );
                  },
                  child: Text("X"),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (!cekInput()) return;
                    controller.bagi(
                      double.parse(txtangka1.text.toString()),
                      double.parse(txtangka2.text.toString()),
                    );
                  },
                  child: Text("/"),
                ),
              ],
            ),
          ),
          Obx(
            () => Text(
              controller.hasilHitung.toString(),
              style: TextStyle(fontSize: 50),
            ),
          ),
        ],
      ),
    );
  }
}
