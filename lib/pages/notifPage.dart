import 'package:flutter/material.dart';

class NotifPage extends StatelessWidget {
  const NotifPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {"title": "Selamat datang di RentCar by Alphared!", "time": "Baru saja"},
      {"title": "Diskon 20% untuk sewa pertama kamu! 🚗", "time": "1h lalu"},
      {"title": "Promo Weekend: Potongan Rp 50.000/jam", "time": "3h lalu"},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Notifications")),
      body: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: items.length,
          separatorBuilder: (_, __) => const SizedBox(height: 8),
          itemBuilder: (_, i) {
            final it = items[i];
            return Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Color(0xFFD4AF37),
                  child: Icon(Icons.notifications, color: Colors.white),
                ),
                title: Text(it["title"]!),
                subtitle: Text(it["time"]!, style: const TextStyle(color: Colors.black54)),
              ),
            );
          },
        ),
      ),
    );
  }
}
