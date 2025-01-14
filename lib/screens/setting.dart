import 'package:flutter/material.dart';
import 'package:uas_flutter_a11_2021_13554/components/global_template.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) ;

  @override
  Widget build(BuildContext context) {
    return GlobalTemplate(
      pageTitle: "Settings",  // Judul halaman
      bodyContent: Padding(
        padding: const EdgeInsets.all(16.0), // Padding untuk tampilan lebih rapi
        child: ListView(
          children: [
            // Pengaturan Tema
            ListTile(
              leading: const Icon(Icons.color_lens),
              title: const Text("Theme"),
              subtitle: const Text("Change app theme"),
              onTap: () {
                // Aksi untuk mengubah tema
                // Bisa tambahkan logika untuk mengganti tema
              },
            ),
            const Divider(),
            
            // Pengaturan Notifikasi
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text("Notifications"),
              subtitle: const Text("Enable or disable notifications"),
              onTap: () {
                // Aksi untuk mengubah pengaturan notifikasi
              },
            ),
            const Divider(),

            // Pengaturan Akun
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text("Account Settings"),
              subtitle: const Text("Change account details"),
              onTap: () {
                // Aksi untuk membuka pengaturan akun
              },
            ),
            const Divider(),

            // Pengaturan Bahasa
            ListTile(
              leading: const Icon(Icons.language),
              title: const Text("Language"),
              subtitle: const Text("Select your preferred language"),
              onTap: () {
                // Aksi untuk mengubah bahasa
              },
            ),
            const Divider(),

            // Tombol Logout
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text("Logout"),
              onTap: () {
                // Aksi logout
                // Bisa menambahkan logika logout jika dibutuhkan
              },
            ),
          ],
        ),
      ),
     profileImagePath: "https://example.com/your_profile_image.jpg", // URL foto profil
    );
  }
}
