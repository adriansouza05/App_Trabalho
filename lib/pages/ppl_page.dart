import 'package:flutter/material.dart';
import 'exercises_page.dart';
import 'volume_page.dart';

class PPLPage extends StatelessWidget {
  const PPLPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("PPL")),
      body: Column(
        children: [
          ListTile(
            title: const Text("Ver Exercícios"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ExercisesPage(tipo: "PPL"),
                ),
              );
            },
          ),
          ListTile(
            title: const Text("Volume de Treino"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const VolumePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}