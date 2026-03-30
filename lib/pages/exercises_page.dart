import 'package:flutter/material.dart';

class ExercisesPage extends StatelessWidget {
  final String tipo;

  const ExercisesPage({super.key, required this.tipo});

  @override
  Widget build(BuildContext context) {
    List<String> exercicios = [];

    if (tipo == "PPL") {
      exercicios = [
        "Supino reto - Substituição: Flexão",
        "Desenvolvimento - Substituição: Elevação lateral",
        "Tríceps pulley - Substituição: Tríceps banco",
        "Barra fixa - Substituição: Pulldown",
        "Rosca direta - Substituição: Rosca elástico",
        "Agachamento - Substituição: Leg press",
        "Stiff - Substituição: Mesa flexora"
      ];
    }

    if (tipo == "Upper/Lower") {
      exercicios = [
        "Supino inclinado - Substituição: Flexão",
        "Remada curvada - Substituição: Remada elástico",
        "Desenvolvimento - Substituição: Elevação lateral",
        "Rosca direta - Substituição: Rosca elástico",
        "Tríceps corda - Substituição: Tríceps banco",
        "Agachamento - Substituição: Leg press",
        "Leg curl - Substituição: Stiff",
        "Panturrilha em pé - Substituição: Panturrilha no degrau"
      ];
    }

    if (tipo == "Full Body") {
      exercicios = [
        "Agachamento - Substituição: Leg press",
        "Supino - Substituição: Flexão",
        "Barra fixa - Substituição: Pulldown",
        "Elevação lateral - Substituição: Elástico",
        "Rosca direta - Substituição: Rosca elástico",
        "Tríceps banco - Substituição: Tríceps corda"
      ];
    }

    return Scaffold(
      appBar: AppBar(title: Text("Exercícios $tipo")),
      body: ListView.builder(
        itemCount: exercicios.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(exercicios[index]),
          );
        },
      ),
    );
  }
}