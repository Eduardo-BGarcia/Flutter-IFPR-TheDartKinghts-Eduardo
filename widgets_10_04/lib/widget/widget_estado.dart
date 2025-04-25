import 'package:flutter/material.dart';

class WidgetEstado extends StatelessWidget {
  const WidgetEstado({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Estado"),
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(decoration: InputDecoration(labelText: "Nome")),
            TextFormField(decoration: InputDecoration(labelText: "Sigla")),
            ElevatedButton(onPressed: () {}, child: const Text("Salvar")),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.save),
              tooltip: "Salvar",
              iconSize: 50,
              padding: EdgeInsets.all(10),
              color: Colors.green,
              hoverColor: Colors.white,
              highlightColor: Colors.greenAccent,
            ),
          ],
        ),
      ),
    );
  }
}
