import 'package:flutter/material.dart';
import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:provider/provider.dart';
import 'providers/auth_provider.dart';
import 'pages/login_page.dart';
import 'app_theme.dart'; // ← Importação do ficheiro de tema adicionada aqui

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AuthProvider())],
      child: DevicePreview(
        enabled: true, // ← mude para false ao gerar o APK final
        builder: (context) => const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true, // Necessário para o DevicePreview
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Titanium Gym',
      // Aplica o tema diretamente da classe que criaste noutro ficheiro:
      theme: AppTheme.theme,
      home: const LoginPage(),
    );
  }
}
