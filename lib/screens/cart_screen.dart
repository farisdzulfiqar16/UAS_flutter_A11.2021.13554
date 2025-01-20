// Halaman keranjang
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:uas_flutter_a11_2021_13554/models/product_model.dart';
import 'package:uas_flutter_a11_2021_13554/components/global_template.dart';
import 'package:uas_flutter_a11_2021_13554/providers/cart_provider.dart';

class CartScreen extends StatelessWidget {
  final List<Product> cartItems; // Menambahkan parameter cartItems

  // Konstruktor
  CartScreen({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    final NumberFormat currencyFormat =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp', decimalDigits: 0);

    return GlobalTemplate(
      pageTitle: "Keranjang",
      bodyContent: Column(
        children: [
          // Menampilkan daftar item di keranjang
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return Card(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    leading: Image.asset('assets/images/${item.imageUrl}',
                        width: 50),
                    title: Text(item.name),
                    subtitle: Text(currencyFormat.format(item.price)),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Angka jumlah item di keranjang
                        Text(
                            'x1'), // Sesuaikan jumlah item sesuai logika aplikasi Anda
                        IconButton(
                          icon: Icon(Icons.remove_shopping_cart,
                              color: Colors.red),
                          onPressed: () {
                            // Aksi penghapusan item
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          // Menampilkan total harga
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total: ${currencyFormat.format(cartItems.fold(0, (sum, item) => sum + item.price.toInt()))}', // Total harga
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Aksi untuk checkout
                    Navigator.pushNamed(context, '/checkout');
                  },
                  child: const Text('Checkout'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[800],
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      profileImagePath:
          "https://example.com/your_profile_image.jpg", // Ganti dengan URL gambar profil
    );
  }
}
