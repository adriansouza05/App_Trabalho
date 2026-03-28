import 'package:flutter/material.dart';
import 'ppl_page.dart';
import 'upper_lower_page.dart';
import 'full_body_page.dart';

class StrategiesPage extends StatelessWidget {
  const StrategiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Estratégias")),
      body: Column(
        children: [
          ListTile(
            title: const Text("PPL"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const PPLPage()),
              );
            },
          ),
          ListTile(
            title: const Text("Upper / Lower"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const UpperLowerPage()),
              );
            },
          ),
          ListTile(
            title: const Text("Full Body"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const FullBodyPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}