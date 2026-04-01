import 'package:flutter/material.dart';
import '../app_theme.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nomeCtrl = TextEditingController();
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController telCtrl = TextEditingController();
  final TextEditingController senhaCtrl = TextEditingController();
  final TextEditingController confSenhaCtrl = TextEditingController();

  void _cadastrar() {
    if (_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: AppTheme.cardGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: AppTheme.borderGrey),
          ),
          title: const Text("Sucesso", style: TextStyle(color: AppTheme.white)),
          content: const Text(
            "Usuário cadastrado com sucesso!",
            style: TextStyle(color: AppTheme.textMuted),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: const Text(
                "OK",
                style: TextStyle(
                  color: AppTheme.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.black,
      appBar: AppBar(
        title: const Text("CRIAR CONTA"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, size: 18),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: nomeCtrl,
                style: const TextStyle(color: AppTheme.white),
                decoration: const InputDecoration(labelText: "Nome Completo"),
                validator: (val) => val!.isEmpty ? "Campo obrigatório" : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: emailCtrl,
                style: const TextStyle(color: AppTheme.white),
                decoration: const InputDecoration(labelText: "E-mail"),
                keyboardType: TextInputType.emailAddress,
                validator: (val) {
                  if (val!.isEmpty) return "Campo obrigatório";
                  if (!val.contains("@")) return "E-mail inválido";
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: telCtrl,
                style: const TextStyle(color: AppTheme.white),
                decoration: const InputDecoration(labelText: "Telefone"),
                keyboardType: TextInputType.phone,
                validator: (val) => val!.isEmpty ? "Campo obrigatório" : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: senhaCtrl,
                obscureText: true,
                style: const TextStyle(color: AppTheme.white),
                decoration: const InputDecoration(labelText: "Senha"),
                validator: (val) =>
                    val!.length < 6 ? "Mínimo 6 caracteres" : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: confSenhaCtrl,
                obscureText: true,
                style: const TextStyle(color: AppTheme.white),
                decoration: const InputDecoration(labelText: "Confirmar Senha"),
                validator: (val) {
                  if (val != senhaCtrl.text) return "As senhas não conferem";
                  return null;
                },
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: _cadastrar,
                child: const Text("FINALIZAR CADASTRO"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
