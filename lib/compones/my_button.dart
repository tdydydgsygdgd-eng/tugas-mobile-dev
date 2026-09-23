import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double radius;

  const MyButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.radius = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Bikin tombol selebar layar/parent
      height: 48.0, // Tinggi tombol yang ideal
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, // Warna tombol
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              radius,
            ), // Kebulatan sudut tombol
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
