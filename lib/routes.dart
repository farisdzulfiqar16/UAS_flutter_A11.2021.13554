import 'package:flutter/material.dart';
import 'package:uas_flutter_a11_2021_13554/models/product_model.dart';
import 'package:uas_flutter_a11_2021_13554/screens/auth_screen.dart';
import 'package:uas_flutter_a11_2021_13554/screens/cart_screen.dart';
import 'package:uas_flutter_a11_2021_13554/screens/checkout_screen.dart';
import 'package:uas_flutter_a11_2021_13554/screens/profile_screen.dart';
import 'package:uas_flutter_a11_2021_13554/screens/main_dashboard_screen.dart';
import 'package:uas_flutter_a11_2021_13554/screens/product_detail_screen.dart';
import 'package:uas_flutter_a11_2021_13554/screens/transaction_history_screen.dart';
import 'package:uas_flutter_a11_2021_13554/screens/setting.dart';
import 'package:uas_flutter_a11_2021_13554/screens/product_list_screen.dart';

// Tambahkan layar lainnya sesuai kebutuhan...

class AppRoutes {
  /// **Rute utama aplikasi**
  static String initialRoute = '/auth';

  // Deklarasikan cartItems dan checkoutItems di sini
  static List<Product> cartItems = [];
  static List<Product> checkoutItems = [];

  /// **Daftar semua rute dalam aplikasi**
  static Map<String, WidgetBuilder> routes = {
    
    '/auth': (context) => const AuthScreen(),
    // Halaman utama
    '/main': (context) => ProductListScreen(), // Perbaiki nama kelas

    // Keranjang
    '/cart': (context) => CartScreen(cartItems: cartItems), // Kirim cartItems

    // Checkout barang
    '/checkout': (context) =>
        CheckoutScreen(checkoutItems: checkoutItems), // Kirim checkoutItems

    // Halaman login dan registrasi user
    '/auth': (context) => const AuthScreen(),

    // Halaman daftar produk
    '/product_list': (context) => ProductListScreen(),

    // Halaman profil pengguna
    '/profile': (context) => const ProfileScreen(),

    // Halaman riwayat transaksi
    '/transaction_history_screen': (context) =>
        const TransactionHistoryScreen(),

    // Halaman pengaturan
    '/setting': (context) => const SettingsScreen(),

    // Tambahkan rute lainnya jika diperlukan
  };

  /// Fungsi navigasi manual untuk halaman yang membutuhkan parameter
  static void navigateToProductDetail(BuildContext context, Product product) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailScreen(product: product),
      ),
    );
  }
}
