import 'package:flutter/material.dart';
import 'custom_appbar.dart';
import 'custom_drawer.dart';
import 'custom_footer.dart';

class GlobalTemplate extends StatelessWidget {
  final Widget bodyContent;
  final String pageTitle;
  final String? profileImagePath; // Parameter untuk foto profil
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;

  const GlobalTemplate({
    Key? key,
    required this.bodyContent,
    required this.pageTitle,
    this.profileImagePath,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: pageTitle,
        profileImagePath: profileImagePath, // Menyediakan URL foto profil
      ),
      drawer: const CustomDrawer(),
      body: SafeArea( // Menggunakan SafeArea untuk mencegah konten tertutup oleh area status bar atau keyboard
        child: Column(
          children: [
            Expanded( // Untuk memberikan ruang untuk konten utama
              child: bodyContent,
            ),
            const CustomFooter(),
          ],
        ),
      ),
      floatingActionButton: floatingActionButton, // Passing the FAB here
      floatingActionButtonLocation: floatingActionButtonLocation, // Pass location here
    );
  }
}
