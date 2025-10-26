import 'package:flutter/material.dart';
import '../theme.dart';
import 'detailPage.dart';
import 'loginPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      "Sedan",
      "SUV",
      "MPV",
      "Coupe",
      "Pickup",
      "Convertible"
    ];

    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/carrent.png', height: 55),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Welcome back, Alphared!",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => const LoginPage()),
                    );
                  },
                  child: const CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            _PromoBanner(),

            const SizedBox(height: 20),

            const Text("Tipe Mobil",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const SizedBox(height: 12),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categories
                    .map((e) => Container(
                          margin: const EdgeInsets.only(right: 12),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                              )
                            ],
                          ),
                          child: Text(
                            e,
                            style: const TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14),
                          ),
                        ))
                    .toList(),
              ),
            ),

            const SizedBox(height: 20),

            const Text("Semua Mobil",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const SizedBox(height: 12),

            // 30 item — path gambar kamu sesuaikan sendiri
            Column(
              children: [
                _CarCard(
                    title: "BMW Seri 7",
                    price: 1200000,
                    imagePath: "assets/images/car_1.png",
                    onTap: () => _toDetail(context, "BMW Seri 7", 1200000,
                        "assets/images/car_1.png")),
                _CarCard(
                    title: "Chevy Silverado",
                    price: 550000,
                    imagePath: "assets/images/car_2.png",
                    onTap: () => _toDetail(context, "Chevy Silverado", 550000,
                        "assets/images/car_2.png")),
                _CarCard(
                    title: "Toyota Fortuner",
                    price: 430000,
                    imagePath: "assets/images/car_3.png",
                    onTap: () => _toDetail(context, "Toyota Fortuner", 430000,
                        "assets/images/car_3.png")),
                _CarCard(
                    title: "BMW M2",
                    price: 950000,
                    imagePath: "assets/images/car_4.png",
                    onTap: () => _toDetail(
                        context, "BMW M2", 950000, "assets/images/car_4.png")),
                _CarCard(
                    title: "Genesis G8",
                    price: 800000,
                    imagePath: "assets/images/car_5.png",
                    onTap: () => _toDetail(context, "Genesis G8", 800000,
                        "assets/images/car_5.png")),
                _CarCard(
                    title: "Koenigsegg Agera",
                    price: 2500000,
                    imagePath: "assets/images/car_6.png",
                    onTap: () => _toDetail(context, "Koenigsegg Agera", 2500000,
                        "assets/images/car_6.png")),
                _CarCard(
                    title: "Mitsubishi Triton",
                    price: 380000,
                    imagePath: "assets/images/car_7.png",
                    onTap: () => _toDetail(context, "Mitsubishi Triton", 380000,
                        "assets/images/car_7.png")),
                _CarCard(
                    title: "Bentley Continental",
                    price: 2200000,
                    imagePath: "assets/images/car_8.png",
                    onTap: () => _toDetail(context, "Bentley Continental",
                        2200000, "assets/images/car_8.png")),
                _CarCard(
                    title: "Chevy Camaro Convertible",
                    price: 1100000,
                    imagePath: "assets/images/car_9.png",
                    onTap: () => _toDetail(context, "Chevy Camaro Convertible",
                        1100000, "assets/images/car_9.png")),
                _CarCard(
                    title: "Hummer H3",
                    price: 600000,
                    imagePath: "assets/images/car_10.png",
                    onTap: () => _toDetail(context, "Hummer H3", 600000,
                        "assets/images/car_10.png")),
                _CarCard(
                    title: "Nissan Juke",
                    price: 350000,
                    imagePath: "assets/images/car_11.png",
                    onTap: () => _toDetail(context, "Nissan Juke", 350000,
                        "assets/images/car_11.png")),
                _CarCard(
                    title: "BMW i8",
                    price: 1800000,
                    imagePath: "assets/images/car_12.png",
                    onTap: () => _toDetail(context, "BMW i8", 1800000,
                        "assets/images/car_12.png")),
                _CarCard(
                    title: "BMW Seri 3 Convertible",
                    price: 950000,
                    imagePath: "assets/images/car_13.png",
                    onTap: () => _toDetail(context, "BMW Seri 3 Convertible",
                        950000, "assets/images/car_13.png")),
                _CarCard(
                    title: "Chevy Silverado",
                    price: 550000,
                    imagePath: "assets/images/car_14.png",
                    onTap: () => _toDetail(context, "Chevy Silverado", 550000,
                        "assets/images/car_14.png")),
                _CarCard(
                    title: "Honda City Sedan",
                    price: 300000,
                    imagePath: "assets/images/car_15.png",
                    onTap: () => _toDetail(context, "Honda City Sedan", 300000,
                        "assets/images/car_15.png")),
                _CarCard(
                    title: "Toyota Avanza",
                    price: 270000,
                    imagePath: "assets/images/car_16.png",
                    onTap: () => _toDetail(context, "Toyota Avanza", 270000,
                        "assets/images/car_16.png")),
                _CarCard(
                    title: "Mercedes Benz S-Class",
                    price: 1500000,
                    imagePath: "assets/images/car_17.png",
                    onTap: () => _toDetail(context, "Mercedes Benz S-Class",
                        1500000, "assets/images/car_17.png")),
                _CarCard(
                    title: "Honda Civic Type R",
                    price: 750000,
                    imagePath: "assets/images/car_18.png",
                    onTap: () => _toDetail(context, "Honda Civic Type R",
                        750000, "assets/images/car_18.png")),
                _CarCard(
                    title: "Ferrari 458",
                    price: 2300000,
                    imagePath: "assets/images/car_19.png",
                    onTap: () => _toDetail(context, "Ferrari 458", 2300000,
                        "assets/images/car_19.png")),
                _CarCard(
                    title: "Jaguar XF",
                    price: 1000000,
                    imagePath: "assets/images/car_20.png",
                    onTap: () => _toDetail(context, "Jaguar XF", 1000000,
                        "assets/images/car_20.png")),
                _CarCard(
                    title: "Jaguar Convertible",
                    price: 1200000,
                    imagePath: "assets/images/car_21.png",
                    onTap: () => _toDetail(context, "Jaguar Convertible",
                        1200000, "assets/images/car_21.png")),
                _CarCard(
                    title: "Jaguar XR1",
                    price: 1300000,
                    imagePath: "assets/images/car_22.png",
                    onTap: () => _toDetail(context, "Jaguar XR1", 1300000,
                        "assets/images/car_22.png")),
                _CarCard(
                    title: "VW Tiguan",
                    price: 400000,
                    imagePath: "assets/images/car_23.png",
                    onTap: () => _toDetail(context, "VW Tiguan", 400000,
                        "assets/images/car_23.png")),
                _CarCard(
                    title: "Ford Everest",
                    price: 450000,
                    imagePath: "assets/images/car_24.png",
                    onTap: () => _toDetail(context, "Ford Everest", 450000,
                        "assets/images/car_24.png")),
                _CarCard(
                    title: "Audi Quattro",
                    price: 980000,
                    imagePath: "assets/images/car_25.png",
                    onTap: () => _toDetail(context, "Audi Quattro", 980000,
                        "assets/images/car_25.png")),
                _CarCard(
                    title: "Volvo C80",
                    price: 880000,
                    imagePath: "assets/images/car_26.png",
                    onTap: () => _toDetail(context, "Volvo C80", 880000,
                        "assets/images/car_26.png")),
                _CarCard(
                    title: "Toyota Hilux",
                    price: 420000,
                    imagePath: "assets/images/car_27.png",
                    onTap: () => _toDetail(context, "Toyota Hilux", 420000,
                        "assets/images/car_27.png")),
                _CarCard(
                    title: "Toyota Innova",
                    price: 800000,
                    imagePath: "assets/images/car_28.png",
                    onTap: () => _toDetail(context, "Toyota Innova", 800000,
                        "assets/images/car_28.png")),
                _CarCard(
                    title: "Pagani Zonda R",
                    price: 22580000,
                    imagePath: "assets/images/car_29.png",
                    onTap: () => _toDetail(context, "Pagani Zonda R", 580000,
                        "assets/images/car_29.png")),
                _CarCard(
                    title: "Tank Abrams M1",
                    price: 9000000,
                    imagePath: "assets/images/car_31.png",
                    onTap: () => _toDetail(context, "Tank Abrams M1", 9000000,
                        "assets/images/car_31.png")),
                _CarCard(
                    title: "BMW Seri 5",
                    price: 850000,
                    imagePath: "assets/images/car_30.png",
                    onTap: () => _toDetail(context, "BMW Seri 5", 850000,
                        "assets/images/car_30.png")),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _toDetail(
      BuildContext context, String title, int price, String imagePath) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => DetailPage(
          title: title,
          price: price,
          imagePath: imagePath,
        ),
      ),
    );
  }
}

// Banner promo mewah
class _PromoBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias, // biar gambar ikut border radius
      child: Stack(
        fit: StackFit.expand,
        children: [
          // 🔹 Gambar jadi background penuh
          Image.asset(
            'assets/images/car_promo.jpg', // ← Ganti ke path gambar kamu
            fit: BoxFit.cover,
          ),

          // 🔹 Lapisan gelap (overlay transparan)
          Container(
            color: Colors.black.withOpacity(0.3), // atur transparansi
          ),

          // 🔹 Teks dan tombol di atas gambar
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                const Text(
                  "20% OFF",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  "The Least Premium Car Rent",
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD4AF37),
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22, vertical: 10),
                  ),
                  child: const Text(
                    "Rent Now",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Card mobil
class _CarCard extends StatelessWidget {
  final String title;
  final int price;
  final String imagePath;
  final VoidCallback onTap;

  const _CarCard({
    required this.title,
    required this.price,
    required this.imagePath,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        onTap: onTap,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child:
              Image.asset(imagePath, height: 60, width: 100, fit: BoxFit.cover),
        ),
        title: Text(title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        subtitle: Text("Rp ${price.toStringAsFixed(0)}/jam",
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w500)),
        trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
      ),
    );
  }
}
