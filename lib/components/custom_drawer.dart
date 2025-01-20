// Sidebar/Drawer navigasi
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Tambahkan provider untuk mengelola state
import 'package:uas_flutter_a11_2021_13554/screens/cart_screen.dart'; // Import halaman Cart
import 'package:uas_flutter_a11_2021_13554/providers/cart_provider.dart'; // Import provider keranjang

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue[800],
            ),
            child: const Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Main'),
            onTap: () {
              Navigator.pushNamed(context, '/main'); // Navigasi ke halaman utama
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text('Cart'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(cartItems: [],),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Setting'),
            onTap: () {
              Navigator.pushNamed(context, '/setting'); // Navigasi ke halaman pengaturan
            },
          ),
        ],
      ),
    );
  }
}
