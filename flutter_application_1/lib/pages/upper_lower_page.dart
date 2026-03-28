import 'package:flutter/material.dart';
import 'exercises_page.dart';
import 'volume_page.dart';

class UpperLowerPage extends StatelessWidget {
  const UpperLowerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Upper / Lower")),
      body: Column(
        children: [

          const SizedBox(height: 20),

          const Text(
            "Divisão Upper / Lower",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          ListTile(
            title: const Text("Treino Upper (Parte Superior)"),
            subtitle: const Text("Peito, Costas, Ombro, Bíceps, Tríceps"),
          ),

          ListTile(
            title: const Text("Treino Lower (Parte Inferior)"),
            subtitle: const Text("Quadríceps, Posterior, Glúteo, Panturrilha"),
          ),

          const SizedBox(height: 20),

          ListTile(
            title: const Text("Ver Exercícios"),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ExercisesPage(tipo: "Upper/Lower"),
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