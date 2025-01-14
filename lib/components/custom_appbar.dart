import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final String? profileImagePath; // Menambahkan path gambar profil

  const CustomAppBar({
    Key? key,
    required this.title,
    this.actions,
    this.profileImagePath, // Parameter untuk foto profil
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.blue[800],
      centerTitle: true,
      actions: [
        if (profileImagePath != null) // Jika ada foto profil
          Padding(
            padding: const EdgeInsets.only(right: 16.0), // Jarak dari sisi kanan
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/profile'); // Navigasi ke halaman profil
              },
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(profileImagePath!),
              ),
            ),
          ),
        ...?actions, // Aksi tambahan lainnya
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
