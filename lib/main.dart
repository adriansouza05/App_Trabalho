import 'package:flutter/material.dart';
import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:provider/provider.dart';
import 'providers/auth_provider.dart';
import 'pages/splash_page.dart'; // ← Importação corrigida para a Splash Page
import 'app_theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (ctx) => AuthProvider())],
      child: DevicePreview(
        enabled: true, // ← mude para false ao gerar o APK final
        builder: (ctx) => const MyApp(),
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
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Science Lifter',
      theme: AppTheme.theme,
      home: const SplashPage(), // ← AGORA O APP INICIA PELA SPLASH PAGE
    );
  }
}
