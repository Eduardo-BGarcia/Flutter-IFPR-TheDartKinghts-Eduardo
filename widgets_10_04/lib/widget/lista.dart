// import 'package:flutter/material.dart';

// class Lista extends StateFulWidget{
//   @override
//   _Lista createState(){
//     return _Lista();
//   }
// }

// class _Lista extends State<Lista>{
//   var nomes =["Joana", "Paulo", "Joaquim", "Roberto"];

//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Lista"),
//         actions: [
//           IconButton(
//               onPressed: () {
//                 setState((){
//                   nomes.add("Zeca");
//                 });
//                 print("de certo! ${nomes.length"});
//               },
//             icon: const Icon(Icons.add))
//           )
//         ],
//       ),
//     ),
//     body: ListView.builder(
//         itemCount: nomes.length, itemBuilder: (context, i) => Text(nomes{i})
//       ),
//     )
//   }
// }

import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  @override
  _ListaState createState() {
    return _ListaState();
  }
}

class _ListaState extends State<Lista> {
  var nomes = ["Joana", "Paulo", "Joaquim", "Roberto"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                nomes.add("Zeca");
              });
              print("Deu certo! ${nomes.length}");
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: nomes.length,
        itemBuilder: (context, i) => Text(nomes[i]),
      ),
    );
  }
}
