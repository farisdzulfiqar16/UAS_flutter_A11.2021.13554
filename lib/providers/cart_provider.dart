import 'package:flutter/material.dart';
import 'package:uas_flutter_a11_2021_13554/models/product_model.dart';

class CartProvider with ChangeNotifier {
  final Map<String, Product> _items = {};

  Map<String, Product> get items => _items;

  int get totalItems => _items.length;

  // Perbaikan: totalPrice menggunakan double, baru diubah ke int jika diperlukan
  int get totalPrice {
    return _items.values
        .fold(0.0, (sum, item) => sum + (item.price * item.quantity)) // menggunakan double
        .toInt(); // konversi ke int setelah perhitungan selesai
  }

  // Perbaikan: price yang diterima sekarang tipe double
  void addToCart(
      String id, String name, double price, String description, String imageUrl) {
    if (_items.containsKey(id)) {
      // Jika produk sudah ada di keranjang, tambahkan jumlah
      _items.update(
        id,
        (existingItem) => Product(
          id: existingItem.id,
          name: existingItem.name,
          price: existingItem.price,
          quantity: existingItem.quantity + 1,
          description: existingItem.description,
          imageUrl: existingItem.imageUrl,
        ),
      );
    } else {
      // Jika produk baru, tambahkan ke keranjang
      _items.putIfAbsent(
        id,
        () => Product(
          id: id,
          name: name,
          price: price,
          quantity: 1,
          description: description,
          imageUrl: imageUrl,
        ),
      );
    }
    notifyListeners();
  }

  void removeFromCart(String id) {
    _items.remove(id);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}
