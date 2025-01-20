// ProductItemWidget.dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import library intl
import 'package:uas_flutter_a11_2021_13554/models/product_model.dart'; // Import model produk

class ProductItemWidget extends StatelessWidget {
  final Product product;
  final Function(Product) onAddToCart;
  final Function(Product) onBuyNow;

  const ProductItemWidget({
    Key? key,
    required this.product,
    required this.onAddToCart,
    required this.onBuyNow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Format harga ke dalam Rupiah
    final NumberFormat currencyFormat =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp', decimalDigits: 0);

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
            // Bagian Gambar Produk
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
              child: Image.asset(
                product.imageUrl,
                width: double.infinity,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            // Informasi Produk
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nama Produk
                  Text(
                    product.name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  // Deskripsi Produk
                  Text(
                    product.description,
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 12),
                  // Harga Produk
                  Text(
                    currencyFormat.format(product.price),
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                ],
              ),
            ),
            // Tombol Aksi
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Tombol Keranjang
                  ElevatedButton.icon(
                    onPressed: () => onAddToCart(product),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                    icon: const Icon(Icons.shopping_cart),
                    label: const Text('Keranjang'),
                  ),
                  // Tombol Beli
                  ElevatedButton.icon(
                    onPressed: () => onBuyNow(product),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    icon: const Icon(Icons.shopping_bag),
                    label: const Text('Beli'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}