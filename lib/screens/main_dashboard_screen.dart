import 'package:flutter/material.dart';
import 'package:uas_flutter_a11_2021_13554/components/global_template.dart';

class MainDashboardScreen extends StatefulWidget {
  @override
  _MainDashboardScreenState createState() => _MainDashboardScreenState();
}

class _MainDashboardScreenState extends State<MainDashboardScreen> {
  // final List<Product> products = [];
  // final List<Product> cart = [];
  // final ImagePicker _picker = ImagePicker();
  // bool _isExpanded = false;

  // File? _imageFile;
  // final TextEditingController _nameController = TextEditingController();
  // final TextEditingController _descriptionController = TextEditingController();
  // final TextEditingController _priceController = TextEditingController();

  @override
  

  // ========================================================
  // core halaman
  @override
  Widget build(BuildContext context) {
    return GlobalTemplate(
      pageTitle: "Dashboard",
      profileImagePath: "https://via.placeholder.com/150", // Path foto profil
      bodyContent: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Statistik
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildDashboardCard(
                  title: "Orders",
                  value: "120",
                  color: Colors.green,
                ),
                _buildDashboardCard(
                  title: "Products",
                  value: "50",
                  color: Colors.blue,
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Navigasi cepat
            const Text(
              "Quick Actions",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildQuickAction(
                  label: "Add Product",
                  icon: Icons.add,
                  onTap: () {
                    Navigator.pushNamed(context, "/add_product");
                  },
                ),
                _buildQuickAction(
                  label: "View Sales",
                  icon: Icons.bar_chart,
                  onTap: () {
                    Navigator.pushNamed(context, "/sales_report");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardCard({
    required String title,
    required String value,
    required Color color,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color.withOpacity(0.1),
        ),
        child: Column(
          children: [
            Text(
              value,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickAction({
    required String label,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blue[100],
            child: Icon(icon, color: Colors.blue[800], size: 28),
          ),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
