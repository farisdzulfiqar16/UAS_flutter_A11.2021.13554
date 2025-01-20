import 'package:flutter/material.dart';
import 'package:uas_flutter_a11_2021_13554/main.dart';
import 'package:uas_flutter_a11_2021_13554/screens/auth_screen.dart'; // Ganti dengan file main Anda

void main() {
  runApp(const MyApp());
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Durasi splash screen, misalnya 3 detik
    Future.delayed(const Duration(seconds: 3), () {
      // Ganti dengan halaman berikutnya
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const AuthScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent, // Warna latar belakang splash
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.laptop_mac,
              color: Colors.white,
              size: 100,
            ),
            const SizedBox(height: 20),
            const Text(
              "Toko Laptop",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
