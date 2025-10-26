import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _c = TextEditingController();
  late List<Map<String, dynamic>> cars;
  late List<Map<String, dynamic>> filtered;

  @override
  void initState() {
    super.initState();
    cars = List.generate(20, (i) {
      final names = ["Sedan Lux", "SUV Pro", "MPV Family", "Coupe Sport", "Pickup XL"];
      return {
        "name": "${names[i % names.length]} ${i + 1}",
        "price": 200000 + (i * 7000),
        "img": "assets/images/car_${(i % 10) + 1}.png", // ganti sesuai asetmu
      };
    });
    filtered = List.from(cars);
  }

  void _onSearch(String q) {
    setState(() {
      filtered = cars
          .where((e) => e["name"].toString().toLowerCase().contains(q.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Search Cars")),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextField(
              controller: _c,
              onChanged: _onSearch,
              decoration: InputDecoration(
                hintText: "Search sedan, suv, coupe...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 16),
            Text("${filtered.length} cars found",
                style: const TextStyle(color: Colors.black54)),
            const SizedBox(height: 12),

            ...filtered.map((m) => _ResultItem(
                  title: m["name"],
                  price: (m["price"] as int).toDouble(),
                  image: m["img"],
                )),
          ],
        ),
      ),
    );
  }
}

class _ResultItem extends StatelessWidget {
  final String title, image;
  final double price;
  const _ResultItem({required this.title, required this.price, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            ClipRRect(
             
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(image, height: 56, width: 88, fit: BoxFit.cover)),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
                    const SizedBox(height: 6),
                    const Text("⭐ 4.6 | Available now", style: TextStyle(color: Color.fromARGB(137, 0, 0, 0))),
                  ]),
            ),
            Text("Rp ${price.toStringAsFixed(0)}/jam",
                style: const TextStyle(fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}
