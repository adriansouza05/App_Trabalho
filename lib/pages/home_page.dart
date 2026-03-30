import 'package:flutter/material.dart';
import 'strategies_page.dart';
import 'comments_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Column(
        children: [
          ListTile(
            title: const Text("Estratégias de Treino"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const StrategiesPage()),
              );
            },
          ),
          ListTile(
            title: const Text("Comentários"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CommentsPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}