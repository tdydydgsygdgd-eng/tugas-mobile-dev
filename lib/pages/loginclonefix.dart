import 'package:flutter/material.dart';

import '../compones/my_textfield.dart';
import '../compones/my_button.dart';

class LoginCloneFix extends StatefulWidget {
  const LoginCloneFix({super.key});

  @override
  State<LoginCloneFix> createState() => _LoginCloneFixState();
}

class _LoginCloneFixState extends State<LoginCloneFix> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Judul
                const Center(
                  child: Text(
                    'Instagram',
                    style: TextStyle(
                      fontFamily: 'Cursive',
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 32),

                // 1.  ini untuk Panggil Komponen Custom TextField untuk Username
                MyTextfield(
                  myHint: 'Phone number, username or email address',
                  txtController: _usernameController,
                  radius: 5.0,
                ),
                const SizedBox(height: 12),

                // 2. ini untuk Panggil Komponen Custom TextField untuk Password
                MyTextfield(
                  myHint: 'Password',
                  txtController: _passwordController,
                  radius: 5.0,
                  isPassword: true, // Menyembunyikan password
                ),
                const SizedBox(height: 12),

                // Forgotten password
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Forgotten password?',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // 3. Panggil Komponen Custom Button untuk Log In
                MyButton(
                  text: 'Log In',
                  radius: 8.0,
                  onPressed: () {
                    // Ambil nilai dari controller
                    print('Username: ${_usernameController.text}');
                    print('Password: ${_passwordController.text}');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
