import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController senha = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: email,
              decoration: const InputDecoration(labelText: "Email"),
            ),
            TextField(
              controller: senha,
              decoration: const InputDecoration(labelText: "Senha"),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Entrar"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const HomePage()),
                );
              },
            ),
            TextButton(
              child: const Text("Criar conta"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const RegisterPage()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}