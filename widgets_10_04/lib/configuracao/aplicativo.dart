import 'package:flutter/material.dart';
import 'package:widgets_10_04/configuracao/rotas.dart';
import 'package:widgets_10_04/widget/formulario.dart';
import 'package:widgets_10_04/widget/lista.dart';
import 'package:widgets_10_04/widget/widget_categoria.dart';
import 'package:widgets_10_04/widget/widget_cidade.dart';
import 'package:widgets_10_04/widget/widget_estado.dart';
import 'package:widgets_10_04/widget/widget_menu.dart';
import 'package:widgets_10_04/widget/widget_pessoa.dart';
import 'package:widgets_10_04/widget/widget_produto.dart';

class Aplicativo extends StatelessWidget {
  const Aplicativo({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aula Widget",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      initialRoute: Rotas.home,
      routes: {
        Rotas.categoria: (context) => const WidgetCategoria(),
        Rotas.cidade: (context) => const WidgetCidade(),
        Rotas.estado: (context) => const WidgetEstado(),
        Rotas.pessoa: (context) => const WidgetPessoa(),
        Rotas.produto: (context) => const WidgetProduto(),
        Rotas.formulario: (context) => Formulario(),
        Rotas.lista: (context) => Lista(),
      },
      home: Scaffold(
        drawer: const Drawer(child: WidgetMenu()),
        appBar: AppBar(
          primary: true,
          backgroundColor: Colors.blueGrey,
          title: const Text("Aula Widget"),
          centerTitle: true,
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 32),
        ),
      ),
    );
  }
}
