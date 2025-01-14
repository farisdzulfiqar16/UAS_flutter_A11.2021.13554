//  list produk
import 'package:flutter/material.dart';
import 'package:uas_flutter_a11_2021_13554/models/product_model.dart';
import 'package:uas_flutter_a11_2021_13554/components/product_item_widget.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
    name: 'victus r0052tx',
    description: 'Laptop victus r0052tx adalah laptop dengan performa tinggi.',
    price: 12000000.00,
    imageUrl: 'assets/images/victus_r0052tx.jpeg', // Hanya path gambar
  ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ProductItemWidget(product: product); // Menggunakan widget ini
        },
      ),
    );
  }
}
