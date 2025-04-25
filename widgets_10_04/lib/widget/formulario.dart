import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  @override
  _FormularioState createState() {
    return _FormularioState();
  }
}

class _FormularioState extends State<Formulario> {
  final _formKey =
      GlobalKey<FormState>(); // Tipo correto de GlobalKey é FormState

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formulario"),
      ),
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Nome", // Ajuste no parâmetro do InputDecoration
              ),
              validator: (valorDigitado) {
                if (valorDigitado == null || valorDigitado.length < 3) {
                  return "Nome deve ter pelo menos 3 caracteres.";
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "E-mail", // Ajuste no parâmetro do InputDecoration
              ),
              validator: (valorDigitado) {
                if (valorDigitado == null || !valorDigitado.contains("@")) {
                  return "E-mail deve conter '@'.";
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print("Deu certo!");
                } else {
                  print("Deu errado!");
                }
              },
              child: const Text("Salvar"),
            ),
          ],
        ),
      ),
    );
  }
}
