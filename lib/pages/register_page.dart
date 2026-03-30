import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nome = TextEditingController();
    TextEditingController peso = TextEditingController();
    TextEditingController objetivo = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Cadastro")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nome,
              decoration: const InputDecoration(labelText: "Nome"),
            ),
            TextField(
              controller: peso,
              decoration: const InputDecoration(labelText: "Peso"),
            ),
            TextField(
              controller: objetivo,
              decoration: const InputDecoration(labelText: "Objetivo"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Cadastrar"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}