import 'package:flutter/material.dart';
import 'pages/splash_page.dart';

void main() {
  runApp(const GymConsultApp());
}

class GymConsultApp extends StatelessWidget {
  const GymConsultApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gym Consultant",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SplashPage(),
    );
  }
}