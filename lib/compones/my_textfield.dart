import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String myHint;
  final TextEditingController txtController;
  final double radius;
  final bool isPassword; // Parameter untuk menyembunyikan teks password

  const MyTextfield({
    super.key,
    required this.myHint,
    required this.txtController,
    required this.radius,
    this.isPassword = false, // Nilai default-nya false
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      obscureText: isPassword, // Menyembunyikan teks jika true (untuk password)
      decoration: InputDecoration(
        hintText: myHint, // Perbaikan dari hint: Text(...) menjadi hintText
        hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
        filled: true,
        fillColor: Colors.grey.shade50,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
      ),
    );
  }
}
