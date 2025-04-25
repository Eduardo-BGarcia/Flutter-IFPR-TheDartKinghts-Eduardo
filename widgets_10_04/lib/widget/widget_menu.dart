import 'package:flutter/material.dart';
import 'package:widgets_10_04/configuracao/rotas.dart';

class WidgetMenu extends StatelessWidget {
  const WidgetMenu({key}) : super(key: key);

  static const buttons = [
    {"label": "Categoria", "route": Rotas.categoria},
    {"label": "Cidade", "route": Rotas.cidade},
    {"label": "Estado", "route": Rotas.estado},
    {"label": "Pessoa", "route": Rotas.pessoa},
    {"label": "Produto", "route": Rotas.produto},
    {"label": "Formulario", "route": Rotas.formulario},
    {"label": "Lista", "route": Rotas.lista},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerHeader(
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [const Text("Menu")],
          ),
        ),
        ...buttons
            .map(
              (item) => ListTile(
                onTap: () => Navigator.of(context).pushNamed(
                  item.containsKey('route') ? item['route']! : '/',
                ),
                title: Text(
                  item.containsKey('label') ? item['label']! : 'PLACEHOLDER',
                ),
              ),
            )
            .toList(),
      ],
    );
  }
}
