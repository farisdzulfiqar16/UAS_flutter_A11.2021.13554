import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:uas_flutter_a11_2021_13554/components/global_template.dart'; // Import GlobalTemplate

class MainDashboardScreen extends StatefulWidget {
  const MainDashboardScreen({Key? key}) : super(key: key);

  @override
  _MainDashboardScreenState createState() => _MainDashboardScreenState();
}

class _MainDashboardScreenState extends State<MainDashboardScreen> {
  final List<Map<String, dynamic>> products = [];
  final ImagePicker _picker = ImagePicker();
  File? _imageFile;

  // Method untuk menambahkan produk baru
  void _addProduct(String name, String description, double price, File? image) {
    setState(() {
      products.add({
        'name': name,
        'description': description,
        'price': price,
        'image': image,
      });
    });
    Navigator.pop(context); // Close modal setelah produk ditambahkan
  }

  // Method untuk memilih gambar dari galeri
  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GlobalTemplate(
      pageTitle: 'Dashboard', // Kirimkan pageTitle
      bodyContent: Column(
        // Kirimkan bodyContent
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Welcome, Admin!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 3 / 4,
                ),
                itemCount: products.length, // Update dengan jumlah produk
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                              ),
                              image: DecorationImage(
                                image: product['image'] != null
                                    ? FileImage(product['image'])
                                    : const AssetImage(
                                            'assets/images/placeholder.png')
                                        as ImageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            product['name'],
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Rp ${product['price']}',
                            style: const TextStyle(
                                fontSize: 14, color: Colors.green),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action for FAB
          _showAddProductDialog();
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  // Method untuk menampilkan dialog untuk menambah produk
  String productName = '';
  String productDescription = '';
  double productPrice = 0.0;

  // void _addProduct(String name, String description, double price, File? image) {
  //   setState(() {
  //     products.add({
  //       'name': name,
  //       'description': description,
  //       'price': price,
  //       'image': image,
  //     });
  //   });
  // }

  void _showAddProductDialog() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'Add New Product',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextField(
                  decoration: const InputDecoration(labelText: 'Product Name'),
                  onChanged: (value) {
                    productName = value; // Menyimpan nama produk
                  },
                ),
                TextField(
                  decoration: const InputDecoration(labelText: 'Description'),
                  onChanged: (value) {
                    productDescription = value; // Menyimpan deskripsi produk
                  },
                ),
                TextField(
                  decoration: const InputDecoration(labelText: 'Price'),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    productPrice =
                        double.tryParse(value) ?? 0.0; // Menyimpan harga produk
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.image),
                  onPressed: _pickImage,
                ),
                _imageFile != null
                    ? Image.file(_imageFile!, height: 100, width: 100)
                    : const Text('No image selected'),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: ElevatedButton(
                    onPressed: () {
                      if (productName.isNotEmpty &&
                          productDescription.isNotEmpty &&
                          productPrice > 0) {
                        _addProduct(
                          productName,
                          productDescription,
                          productPrice,
                          _imageFile,
                        );
                        Navigator.pop(context); // Close the modal
                      }
                    },
                    child: const Text('Add Product'),
                  ), //
                ), //
              ],
            ), //
          ), //
        ); //
      },
    );
  }
}
