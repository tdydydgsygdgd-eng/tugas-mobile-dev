import 'package:flutter/material.dart';
import 'package:flutter_application_testing/compones/my_texfiledkal.dart';
import 'package:flutter_application_testing/routes.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtJenis_kelamin = TextEditingController();
    TextEditingController txt_nomer_wa = TextEditingController();
    TextEditingController txtEmail = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
        centerTitle: true,
        // Kustomisasi warna AppBar
        backgroundColor: Colors.blueAccent, // Warna latar belakang AppBar
        foregroundColor: Colors.white, // Warna teks & ikon panah kembali
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 8),
            MyTextfield(
              myHint: "Masukkan nama lengkap",
              txtController: txtNama,
              radius: 10,
            ),
            const SizedBox(height: 12),
            MyTextfield(
              myHint: "Masukkan alamat",
              txtController: txtAlamat,
              radius: 10,
            ),
            const SizedBox(height: 12),
            MyTextfield(
              myHint: "Masukkan jenis kelamin ",
              txtController: txtJenis_kelamin,
              radius: 10,
            ),
            const SizedBox(height: 12),
            MyTextfield(
              myHint: "Masukkan nomor WhatsApp",
              txtController: txt_nomer_wa,
              radius: 10,
            ),
            const SizedBox(height: 12),
            MyTextfield(
              myHint: "Masukkan email",
              txtController: txtEmail,
              radius: 10,
            ),
            const SizedBox(height: 24),

            // Tombol Kirim / Send dengan Kustomisasi Warna
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  Routes.confirmRegistration,
                  arguments: {
                    'name': txtNama.text.toString(),
                    'alamat': txtAlamat.text.toString(),
                    'jenis_kelamin': txtJenis_kelamin.text.toString(),
                    'nomer_wa': txt_nomer_wa.text.toString(),
                    'email': txtEmail.text.toString(),
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent, // Warna latar tombol
                foregroundColor: Colors.white, // Warna teks pada tombol
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Send",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
