// Halaman keranjang
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uas_flutter_a11_2021_13554/models/product_model.dart';
import 'package:uas_flutter_a11_2021_13554/components/global_template.dart';

class CartScreen extends StatelessWidget {
  final List<Product> cartItems;

  CartScreen({Key? key, required this.cartItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final NumberFormat currencyFormat = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp', decimalDigits: 0);
    return GlobalTemplate(
      pageTitle: "Keranjang",
      bodyContent: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return ListTile(
            leading: Image.asset('assets/images/${item.imageUrl}', width: 50),
            title: Text(item.name),
            subtitle: Text('Rp${item.price.toStringAsFixed(0)}'),
          );
        },
      ),
      profileImagePath: "https://example.com/your_profile_image.jpg",
    );
  }
}
