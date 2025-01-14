// ProductItemWidget.dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import library intl
import 'package:uas_flutter_a11_2021_13554/models/product_model.dart'; // Import model produk

class ProductItemWidget extends StatelessWidget {
  final Product product;

  const ProductItemWidget({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Format harga ke dalam Rupiah
    final NumberFormat currencyFormat = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp', decimalDigits: 0);

    return GestureDetector(
      onTap: () {
        // Menangani aksi tap untuk detail produk
        Navigator.pushNamed(
          context,
          '/product_detail_screen',
          arguments: product, // Mengirim objek produk ke halaman detail
        );
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'images/${product.imageUrl}', // Gambar produk
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                product.name,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                currencyFormat.format(product.price), // Format harga menjadi Rupiah
                style: const TextStyle(fontSize: 14, color: Colors.green),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                product.description,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
