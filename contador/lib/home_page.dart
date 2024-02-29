import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var vezes = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Você clicou $vezes vezes!"),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    vezes++;
                  });
                  print(vezes);
                },
                child: Text("Clique aqui!"))
          ],
        ),
      ),
    );
  }
}
