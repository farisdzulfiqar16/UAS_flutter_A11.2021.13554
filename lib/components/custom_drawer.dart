// Sidebar/Drawer navigasi
import 'package:flutter/material.dart';

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
              Navigator.pushNamed(context, '/main');
            },

          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text('Cart'),
            onTap: () {
              Navigator.pushNamed(context, '/cart');
            },
          ),
          
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Setting'),
            onTap: () {
              Navigator.pushNamed(context, '/setting');
            },
          ),
          
        ],
      ),
    );
  }
}
