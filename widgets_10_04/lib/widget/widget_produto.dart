import 'package:flutter/material.dart';

class WidgetProduto extends StatelessWidget {
  const WidgetProduto({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Produto"),
      ),
      body: const Text("Produto"),
    );
  }
}
