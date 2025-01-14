// halaman login dan registrasi user
import 'package:flutter/material.dart';
import 'package:uas_flutter_a11_2021_13554/components/global_template.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(), // Nonaktifkan swipe manual
      children: [
        _buildLoginPage(context),
        _buildRegisterPage(context),
      ],
    );
  }

  Widget _buildLoginPage(BuildContext context) {
    return GlobalTemplate(
      pageTitle: "Login",
      bodyContent: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika login di sini
              },
              child: const Text("Login"),
            ),
            TextButton(
              onPressed: () {
                _pageController.animateToPage(1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut);
              },
              child: const Text("Belum punya akun? Daftar di sini"),
            ),
          ],
        ),
      ),
      profileImagePath: "https://example.com/your_profile_image.jpg",
    );
  }

  Widget _buildRegisterPage(BuildContext context) {
    return GlobalTemplate(
      pageTitle: "Register",
      bodyContent: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: "Nama Lengkap",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika register di sini
              },
              child: const Text("Register"),
            ),
            TextButton(
              onPressed: () {
                _pageController.animateToPage(0,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut);
              },
              child: const Text("Sudah punya akun? Login di sini"),
            ),
          ],
        ),
      ),
      profileImagePath: "https://example.com/your_profile_image.jpg",
    );
  }
}