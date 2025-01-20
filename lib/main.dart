import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uas_flutter_a11_2021_13554/providers/cart_provider.dart'; // Import file provider
import 'package:uas_flutter_a11_2021_13554/screens/product_list_screen.dart';
import 'routes.dart'; // Pastikan file routes.dart benar
import 'package:uas_flutter_a11_2021_13554/screens/splash_screen.dart'; // Ganti dengan file SplashScreen Anda
import 'package:uas_flutter_a11_2021_13554/screens/auth_screen.dart'; // Ganti dengan file AuthScreen Anda

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()), // Menyediakan cart provider
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Laptop',
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Mengarahkan ke SplashScreen sebagai rute pertama
      routes: {
        '/': (context) => const SplashScreen(), // Rute SplashScreen
        '/auth': (context) => const AuthScreen(), // Rute halaman login
        '/product_list': (context) =>  ProductListScreen(), // Ganti dengan halaman produk
        // Tambahkan rute lain sesuai kebutuhan aplikasi
      },
    );
  }
}
