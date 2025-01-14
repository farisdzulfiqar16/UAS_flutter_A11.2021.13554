// Contoh model produk
class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Product({
      required this.name,
      required this.description,
      required this.price,
      required this.imageUrl,
    });

  // Factory untuk mengonversi dari model lama
  // factory Product.fromOldModel(String name, double price) {
  //   return Product(
  //     name: name,
  //     description: '',
  //     price: price,
  //     imageUrl: '',
  //   );
  // }


  
  // final String id;
  // final String name;
  // final double price;

  // Product({required this.id, required this.name, required this.price});
}
