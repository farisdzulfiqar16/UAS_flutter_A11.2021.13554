//  Halaman profil
import 'package:flutter/material.dart';
import 'package:uas_flutter_a11_2021_13554/components/global_template.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalTemplate(
      bodyContent: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Foto Profil, tampilkan di dalam GlobalTemplate header
            const SizedBox(height: 16),
            const Text(
              "Nama Pengguna", // Ganti dengan data dinamis jika diperlukan
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Deskripsi atau status singkat tentang pengguna.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Implementasikan tindakan jika tombol ditekan
              },
              child: const Text('Edit Profil'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implementasikan tindakan logout
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Warna tombol logout
              ),
              child: const Text('Log Out'),
            ),
          ],
        ),
      ),
      pageTitle: "Keranjang", // Menambahkan pageTitle
      profileImagePath: "https://example.com/your_profile_image.jpg", // URL foto profil
    );
  }
}
