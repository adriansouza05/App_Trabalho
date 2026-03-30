import 'package:flutter/material.dart';
import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter_application_1/pages/splash_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true, // ← muda para false quando for gerar o APK final
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery:
          true, // ← obrigatório para o DevicePreview funcionar
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const SplashPage(),
    );
  }
}
