import 'package:flutter/material.dart';
import 'exercises_page.dart';
import 'volume_page.dart';

class FullBodyPage extends StatelessWidget {
  const FullBodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Full Body")),
      body: Column(
        children: [

          const SizedBox(height: 20),

          const Text(
            "Treino Full Body",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          const ListTile(
            title: Text("Treino de Corpo Inteiro"),
            subtitle: Text("Peito, Costas, Ombro, Perna, Bíceps, Tríceps"),
          ),

          const SizedBox(height: 20),

          ListTile(
            title: const Text("Ver Exercícios"),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ExercisesPage(tipo: "Full Body"),
                ),
              );
            },
          ),

          ListTile(
            title: const Text("Volume de Treino"),
            trailing: const Icon(Icons.arrow_forward),
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