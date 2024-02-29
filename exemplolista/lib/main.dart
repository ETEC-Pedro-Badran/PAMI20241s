import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    theme: ThemeData(colorSchemeSeed: Colors.purple),
    home: Scaffold(
        appBar:
            AppBar(backgroundColor: Colors.purple[100], title: Text("Listas")),
        body: const Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.face_5, size: 100),
            Text("Evaldo"),
            Icon(Icons.face_6_outlined, size: 100),
            Text("André"),
            Icon(Icons.face_3_outlined, size: 100),
            Text("Juliano")
          ],
        ))),
  ));
}
