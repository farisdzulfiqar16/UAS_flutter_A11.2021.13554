//  list produk
import 'package:flutter/material.dart';
import 'package:uas_flutter_a11_2021_13554/models/product_model.dart';
import 'package:uas_flutter_a11_2021_13554/components/product_item_widget.dart';
import 'package:uas_flutter_a11_2021_13554/components/global_template.dart';
import 'package:uas_flutter_a11_2021_13554/screens/product_detail_screen.dart';
import 'package:uas_flutter_a11_2021_13554/screens/checkout_screen.dart';

class ProductListScreen extends StatefulWidget {
  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  String searchQuery = '';
  List<Product> displayedProducts = [];
  final List<Product> cart = [];
  final List<Product> products = [
    Product(
      id: 'p1', // Menambahkan id unik untuk produk
      name: 'Aspire 7 Gaming A715-76G-54XS',
      description:
          '''Acer ikut berkompetisi dalam menghadirkan laptop gaming murah spek tinggi dengan hadirkan Aspire 7 Gaming A715-76G-54XS. 
      Selain memiliki performa yang bagus, laptop ini juga memiliki layar yang jelas. Desainnya juga terlihat lebih sederhana dibandingkan laptop sejenis, 
      cocok untuk mereka yang menginginkan laptop elegan dengan kinerja tangguh.
      Dalam hal prosesor, laptop Acer Aspire 7 Gaming A715-76G-54XS sudah menggunakan Intel Core i5 dan GPU GeForce GTX 1650, yang lebih dari cukup untuk bermain game dan rendering video. 
      Penyimpanannya terdiri dari SSD 512GB dan RAM 8GB DDR4 yang bisa ditingkatkan melalui slot dual SODIMM.''',
      price: 10600000,
      imageUrl: 'assets/images/Aspire 7 Gaming A715-76G-54XS.jpg',
    ),
    Product(
      id: 'p2', // Menambahkan id unik untuk produk
      name: 'Nitro 5 AN515-44',
      description:
          '''Nitro 5 AN515-44 bisa menjadi laptop gaming yang harganya dibanderol terjangkau. Sebagai laptop gaming terbaru pastinya sudah mengalami peningkatan dari seri sebelumnya.
      Dimana hadir dengan opsi prosesor AMD Ryzen 7 4800H yang disandingkan dengan pengolah grafis NVIDIA GeForce GTX1650Ti yang memiliki VRAM 4 GB GDDR6.
      Kelebihan dari Nitro 5 terbaru ini memiliki desain yang galak ala gaming kebanyakan. Selan itu juga memudahkan Anda untuk melakukan upgrade. Karena sudah tersedia dua slot untuk M.2 PCIe SSD hingga 32 GB DDR4. 
      Pengalaman gaming pun terasa asik melalui layar FHD IPS berukuran 15,6 inci. Anda dapat menikmati gameplay yang halus dan bebas blur dengan refresh rate 144Hz dan  response time 3 ms.''',
      price: 15000000.00,
      imageUrl: 'assets/images/Nitro 5 AN515-44.jpg',
    ),
    Product(
      id: 'p3', // Menambahkan id unik untuk produk
      name: 'Nitro 5 AN515-52',
      description:
          '''Nitro merupakan salah satu lini laptop gaming murah dari Acer. Dan di lini Acer Nitro 5 terdapat beberapa varian, salah satunya Nitro 5 AN515-52 yang hadir dengan pola carbon yang mengesankan gahar.
      Untuk performa gaming, Acer Nitro 5 memiliki dua konfigurasi yaitu dengan prosesor Core i7-8750H dan Core i5-8300H. Namun untuk harga termurah ada pada varian prosesor core i5.
      Memiliki layar 15,6 inci IPS (Full HD), Windows 10 Home, memori 8GB DDR4 dan hardisk 1TB. Dihadirkan pula fitur NitroSense untuk memantau dan mengendalikan secara real-time informasi sistem, suhu dan pemuatan CPU/GPU.''',
      price: 9000000.00,
      imageUrl: 'assets/images/Nitro 5 AN515-52.jpg', // Hanya path gambar
    ),
    Product(
      id: 'p4', // Menambahkan id unik untuk produk
      name: ' Nitro 5 AN515-42 AMD Ryzen 7',
      description:
          '''Nitro 5 AN515-42 jadi laptop gaming murah yang dirilis tahun 2019. Bedanya kali ini mengusung prosesor AMD Ryzen 7-2700U yang diklaim memberikan peningkatan kecepatan hingga 175% lebih baik dari generasi sebelumnya.
      Prosesor ini akan di sokong grafis Radeon RX 560X lengkap bersama memori RAM 8GB DDR4 dan 128GB SSD dan 1 TB pada HDD. Laptop Acer terbaru ini pun mendukung upgrade ke SSD NVMe yang lebih cepat 2X dari SSD biasa.
      Laptop untuk game ini memiliki layar 15,6 inci dengan resolusi FullHD IPS. Hadir fitur NitroSense untuk memantau dan mengendalikan kecepatan kipas. Nitro 5 juga paling mudah di-upgrade dengan backdoor compartmen untuk HDD dan RAM hanya membuka 1 mur tanpa membongkar seluruh casing.''',
      price: 14000000.00,
      imageUrl:
          'assets/images/Nitro 5 AN515-42 AMD Ryzen 7.jpg', // Hanya path gambar
    ),
    Product(
      id: 'p5', // Menambahkan id unik untuk produk
      name: 'ASUS TUF Gaming FX505',
      description:
          '''ASUS TUF Gaming FX505 merupakan penerus dari TUF Gaming FX504 yang tampil dengan spesifikasi lebih baik serta memiliki serangkaian fitur premium seperti NanoEdge Display, Anti-Dust Colling, dan AURA Sync RGB keyboard. 
      bodi laptop gaming ini juga sangat kokoh bahkan telah mengantongi sertifikasi stAndarisasi militer MIL-STD 810G. ASUS TUF Gaming FX505 sudah ditenagai oleh prosesor Intel Core Generasi ke-8 dan chip grafis Nvidia GeForce GTX.
      Sehingga memungkinkan untuk Anda memainkan game berat. ASUS juga menghadirkan delapan varian TUF Gaming FX505 yang menggunakan prosesor Intel Core i5-8300H serta chip grafis Nvidia GeForce GTX 1050 dengan RAM 8 GB.''',
      price: 11000000.00,
      imageUrl: 'assets/images/ASUS TUF Gaming FX505.jpg', // Hanya path gambar
    ),
    Product(
      id: 'p6', // Menambahkan id unik untuk produk
      name: 'ROG Zephyrus G GA502DU',
      description:
          '''ASUS ROG Zephyrus G GA502DU menjadi laptop gaming pertama yang memadukan prosesor AMD Ryzen 7 3750H dengan chip grafis NVIDIA GTX 1660Ti.
      ROG Zephyrus G GA502DU tetap hadir dengan berbagai fitur khusus untuk menunjang kegiatan bermain game. Memiliki rangka bodi tangguh berbahan magnesium alloy, dengan layar dengan bezel ultra-tipis.
      Layar tersebut memiliki spesifikasi gaming dengan refresh rate 144Hz dan response time 3ms. Tidak ketinggalan pula sertifikasi kalibrasi warna dari PANTONE membuat laptop gaming ini dapat digunakan oleh para profesional di industri kreatif.''',
      price: 14000000.00,
      imageUrl: 'assets/images/ROG Zephyrus G GA502DU.jpg', // Hanya path gambar
    ),
    Product(
      id: 'p7', // Menambahkan id unik untuk produk
      name: 'Lenovo Legion 5',
      description:
          '''Model Legion di jajaran laptop Lenovo memang identik dengan gaming. Legion 5. Laptop ini sendiri menggunakan prosesor AMD Ryzen R5 dan R7 dengan grafis GeForce GTX 1650 serta 1650Ti.
      Kapasitas RAM tertanam pada Legio 5 adalah 8 GB dengan kapasitas memory internal hingga 1TB PCIe SSD. Nilai lebih dari perangkat ini adalah hadirnya dukungan keyboar TrueStrike.
      Berbicara keawetan, rasanya penggunaan baterai berkapasitas 60Wh rasanya sudah membuktikan hal tersebut. Meski untuk gaming, bisa juga untuk digunakan sebagai perangkat kerja.''',
      price: 15000000.00,
      imageUrl: 'assets/images/Lenovo Legion 5.jpg', // Hanya path gambar
    ),
    Product(
      id: 'p8', // Menambahkan id unik untuk produk
      name: 'Lenovo Legion Y540',
      description:
          '''Lenovo Legion Y540 bisa juga dijadikan pilihan sebagai laptop gaming dengan harga yang terjangkau. Bermain game rasanya cukup nyaman dengan layar berukuran 15.6 inci.
      Apalagi bezelnya cukup tipis sehingga terlihat lebih lapang dan membuat ukurannya lebih kompak. Makin nyaman dengan resolusi FullHD
      Serta refresh rate 144 Hz yang membuat Gerakan gaming lebih halus. Kekuatan gamingnya sendiri ditenagai prosesor Core i5 9300H yang dipadukan dengan pengolah grafis NVIDIA GeForce GTX 1650 serta RAM 8 GB.''',
      price: 13000000.00,
      imageUrl: 'assets/images/Lenovo Legion Y540.jpg', // Hanya path gambar
    ),
    Product(
      id: 'p9', // Menambahkan id unik untuk produk
      name: 'Lenovo Legion Y520',
      description:
          '''Lenovo Legion Y520-6AID termasuk laptop gaming tipis yang membuatnya nyaman dibawa kemanapun. Bahkan generasi laptop gaming baru Lenovo ini siap bersaing dengan kompetitornya. 
      Harga yang ditawarkan pun cukup sepadang dengan kualitas gaming terbaik setara desktop. Didalamnya sudah tertanam prosesor Core i7-7700HQ yang dipadukan pengolah grafis NVidia GTX1050Ti VRAM 2GB.
      Memori RAM nya sendiri menggunakan kapasitas 8 GB. Sangat nyaman untuk editing video ataupun foto, termasuk mendukung kebutuhan bermain game.''',
      price: 13000000.00,
      imageUrl: 'assets/images/Lenovo Legion Y520.jpg', // Hanya path gambar
    ),
    Product(
      id: 'p0', // Menambahkan id unik untuk produk
      name: 'laptop',
      description: '''  ''',
      price: 13000000.00,
      imageUrl: 'assets/images/', // Hanya path gambar
    ),
  ];

  //===============================================
  @override
  void initState() {
    super.initState();
    displayedProducts = products;
  }

  // Filter produk berdasarkan query pencarian
  void filterProducts(String query) {
    setState(() {
      searchQuery = query.toLowerCase();
      displayedProducts = products.where((product) {
        return product.name.toLowerCase().contains(searchQuery);
      }).toList();
    });
  }

  // Mengurutkan produk berdasarkan harga (ascending)
  void sortProductsAscending() {
    setState(() {
      displayedProducts.sort((a, b) => a.price.compareTo(b.price));
    });
  }

  // Mengurutkan produk berdasarkan harga (descending)
  void sortProductsDescending() {
    setState(() {
      displayedProducts.sort((a, b) => b.price.compareTo(a.price));
    });
  }

// Navigasi ke halaman detail produk
  void navigateToProductDetail(Product product) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailScreen(product: product),
      ),
    );
  }

  // navigasi ke halaman keranjang
  void addToCart(Product product) {
    setState(() {
      cart.add(product);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('${product.name} ditambahkan ke keranjang.')),
    );
  }

  // navigasi ke halaman checkout
  void navigateToCheckout() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CheckoutScreen(checkoutItems: cart),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GlobalTemplate(
      pageTitle:
          'Product List', // Pastikan nama parameter sesuai dengan definisi
      bodyContent: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    onChanged: filterProducts,
                    decoration: const InputDecoration(
                      labelText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_upward),
                  onPressed: sortProductsAscending,
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_downward),
                  onPressed: sortProductsDescending,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ProductItemWidget(
                  product: product,
                  onAddToCart: (product) {
                    // Tambahkan logika untuk menambah ke keranjang
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text(
                              '${product.name} ditambahkan ke keranjang.')),
                    );
                  },
                  onBuyNow: (product) {
                    // Tambahkan logika untuk langsung membeli
                    Navigator.pushNamed(context, '/checkout',
                        arguments: product);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
