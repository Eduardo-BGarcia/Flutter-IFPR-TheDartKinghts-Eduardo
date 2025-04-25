import 'package:flutter/material.dart';

class WidgetCategoria extends StatelessWidget {
  const WidgetCategoria({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Categoria"),
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(decoration: InputDecoration(labelText: "Nome")),
          ],
        ),
      ),
    );
  }
}
