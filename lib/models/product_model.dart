// model produk
import 'dart:convert';

class Product {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final double price;
  int quantity;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    this.quantity = 1,
  });

  @override
  String toString() {
    return '$name ($id) - $price';
  }

  /// Metode untuk membuat Product dari JSON
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as String, // Pastikan JSON memiliki id
      name: json['name'] as String? ?? 'Unknown Product', // Default jika name null
      description: json['description'] as String? ?? 'No description available',
      imageUrl: json['imageUrl'] as String? ?? '', // Default jika tidak ada gambar
      price: _toDouble(json['price']), // Konversi ke double
    );
  }

  /// Metode untuk mengubah Product ke JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'imageUrl': imageUrl,
      'price': price,
    };
  }

  /// Helper untuk mengonversi nilai price ke double
  static double _toDouble(dynamic value) {
    if (value is int) {
      return value.toDouble();
    } else if (value is String) {
      return double.tryParse(value) ?? 0.0; // Jika parsing gagal, default ke 0.0
    } else if (value is double) {
      return value;
    } else {
      return 0.0; // Default jika tipe tidak dikenal
    }
  }
}
