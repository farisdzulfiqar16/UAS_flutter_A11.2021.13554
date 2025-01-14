import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Laptop',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute, // Rute awal
      routes: AppRoutes.routes,
    );
  }
}
