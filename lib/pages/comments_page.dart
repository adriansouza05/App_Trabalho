import 'package:flutter/material.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({super.key});

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  List<String> comentarios = [];
  TextEditingController controller = TextEditingController();

  void adicionar() {
    setState(() {
      comentarios.add(controller.text);
      controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Comentários")),
      body: Column(
        children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(labelText: "Comentário"),
          ),
          ElevatedButton(
            onPressed: adicionar,
            child: const Text("Enviar"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: comentarios.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(comentarios[index]),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}