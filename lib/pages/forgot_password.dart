import 'package:flutter/material.dart';
import '../app_theme.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailCtrl = TextEditingController();

  void _recuperarSenha() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text("Instruções enviadas para o e-mail informado."),
          backgroundColor: AppTheme.red.withOpacity(0.9),
        ),
      );
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.black,
      appBar: AppBar(
        title: const Text("RECUPERAR SENHA"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, size: 18),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Informe o seu e-mail cadastrado. Enviaremos um link para redefinir a sua senha.",
                style: TextStyle(
                  fontSize: 15,
                  color: AppTheme.textMuted,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 24),
              TextFormField(
                controller: emailCtrl,
                style: const TextStyle(color: AppTheme.white),
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "E-mail",
                  prefixIcon: Icon(Icons.email, color: AppTheme.textMuted),
                ),
                validator: (val) {
                  if (val == null || val.isEmpty) return "Informe o e-mail";
                  if (!val.contains("@")) return "E-mail inválido";
                  return null;
                },
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: _recuperarSenha,
                child: const Text("SOLICITAR RECUPERAÇÃO"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
