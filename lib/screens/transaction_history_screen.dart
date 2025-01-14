//  Riwayat transaksi
import 'package:flutter/material.dart';
import 'package:uas_flutter_a11_2021_13554/components/global_template.dart';

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({Key? key}) ;
  @override
  Widget build(BuildContext context) {
    return GlobalTemplate(
      bodyContent: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome to the Main Screen!",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            
          ],
        ),
      ),
      pageTitle: "Transaksi", // Menambahkan pageTitle
      profileImagePath: "https://example.com/your_profile_image.jpg", // URL foto profil
    );
  }
}
