import 'package:flutter/material.dart';
import 'theme.dart';
import 'pages/splashScreen.dart';

void main() {
  runApp(const CarrentApp());
}

class CarrentApp extends StatelessWidget {
  const CarrentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carrent – Luxury Rental',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const SplashScreen(),
    );
  }
}
