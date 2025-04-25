import 'package:flutter/material.dart';

class WidgetCidade extends StatelessWidget {
  const WidgetCidade({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Cidade"),
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(decoration: InputDecoration(labelText: "Nome")),
            DropdownButtonFormField(
              decoration: InputDecoration(labelText: "Estado"),

              items: [
                DropdownMenuItem(child: const Text("Paraná"), value: "PR"),
                DropdownMenuItem(child: const Text("São Paulo"), value: "SP"),
                DropdownMenuItem(
                  child: const Text("Santa Catarina"),
                  value: "SC",
                ),
                DropdownMenuItem(
                  child: const Text("Rio Grande do Sul"),
                  value: "RS",
                ),
              ],
              onChanged: (e) {
                print(e);
              },
            ),
          ],
        ),
      ),
    );
  }
}
