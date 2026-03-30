import 'package:flutter/material.dart';

class VolumePage extends StatelessWidget {
  const VolumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Volume de Treino")),
      body: Column(
        children: const [
          ListTile(
            title: Text("Low Volume"),
            subtitle: Text("3-6 séries por músculo"),
          ),
          ListTile(
            title: Text("Moderate Volume"),
            subtitle: Text("8-12 séries por músculo"),
          ),
          ListTile(
            title: Text("High Volume"),
            subtitle: Text("15-20 séries por músculo"),
          ),
        ],
      ),
    );
  }
}
