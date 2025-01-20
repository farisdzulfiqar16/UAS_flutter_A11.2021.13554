// Halaman detail produk
import 'package:flutter/material.dart';
import 'package:uas_flutter_a11_2021_13554/components/global_template.dart';
import 'package:uas_flutter_a11_2021_13554/models/product_model.dart';

class ProductDetailScreen extends StatelessWidget {

  final Product product;

  const ProductDetailScreen({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context)!.settings.arguments as Product;

    return GlobalTemplate(
      pageTitle: product.name,
      bodyContent: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset('assets/images/${product.imageUrl}', height: 250),
            const SizedBox(height: 16),
            Text(product.name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text('Rp${product.price.toStringAsFixed(0)}', style: const TextStyle(fontSize: 18, color: Colors.green)),
            const SizedBox(height: 8),
            Text(product.description),
          ],
        ),
      ),
      profileImagePath: "https://example.com/your_profile_image.jpg",
    );
  }
}