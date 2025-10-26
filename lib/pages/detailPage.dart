import 'package:flutter/material.dart';
import '../theme.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final int price;
  final String imagePath;

  const DetailPage({
    super.key,
    this.title = "Luxury Car",
    this.price = 300000,
    this.imagePath = "assets/images/car_1.png",
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(imagePath, height: 220, fit: BoxFit.cover),
            ),
            const SizedBox(height: 16),
            Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
            const SizedBox(height: 8),
            Text("Rp ${price.toStringAsFixed(0)}/jam",
                style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)),
            const SizedBox(height: 16),
            const Text(
              "Deskripsi",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 6),
            const Text(
              "Rasakan pengalaman berkendara premium dengan interior mewah, performa tinggi, dan kenyamanan terbaik. Cocok untuk perjalanan bisnis, liburan, maupun acara spesial.",
              style: TextStyle(color: Colors.black87),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primary,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child: const Text("Sewa Sekarang", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
