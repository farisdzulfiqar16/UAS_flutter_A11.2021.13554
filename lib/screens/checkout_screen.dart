// Halaman checkout
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:uas_flutter_a11_2021_13554/models/product_model.dart';
import 'package:uas_flutter_a11_2021_13554/components/global_template.dart';
import 'package:uas_flutter_a11_2021_13554/providers/cart_provider.dart';

class CheckoutScreen extends StatelessWidget {
  final List<Product> checkoutItems; // Menambahkan parameter checkoutItems

  // Konstruktor
  CheckoutScreen({required this.checkoutItems});

  @override
  Widget build(BuildContext context) {
    final NumberFormat currencyFormat =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp', decimalDigits: 0);

    return GlobalTemplate(
      pageTitle: "Checkout",
      bodyContent: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: checkoutItems.length,
                itemBuilder: (context, index) {
                  final item = checkoutItems[index];
                  return ListTile(
                    leading: Image.asset('assets/images/${item.imageUrl}',
                        width: 50),
                    title: Text(item.name),
                    subtitle: Text(currencyFormat.format(item.price)),
                    trailing: Text(
                        'x1'), // Sesuaikan jumlah item sesuai logika aplikasi Anda
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Total: ${currencyFormat.format(checkoutItems.fold(0, (sum, item) => sum + item.price.toInt()))}', // Total harga
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika pembayaran
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Pembayaran berhasil!')),
                );
              },
              child: const Text('Bayar'),
            ),
          ],
        ),
      ),
      profileImagePath:
          "https://example.com/your_profile_image.jpg", // Ganti dengan URL gambar profil
    );
  }
}
