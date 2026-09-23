import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextfield extends StatelessWidget {
  // list variabel parameter yang digunakan
  // untuk diisikan kegtika dipanggil
  final String myHint;
  final TextEditingController txtController;
  final List<TextInputFormatter>? inputFormatters;
  final double radius;
  const MyTextfield({
    super.key,
    required this.myHint,
    required this.txtController,
    required this.radius,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,

      inputFormatters: inputFormatters,

      decoration: InputDecoration(
        hintText: myHint,
        border: OutlineInputBorder(),
      ),
    );
  }
}
