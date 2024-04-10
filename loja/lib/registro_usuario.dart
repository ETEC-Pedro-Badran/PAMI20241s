import 'package:flutter/material.dart';

class RegistroUsuario extends StatelessWidget {
  const RegistroUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Novo usuário"),
      ),
      body: Stack(
        children: [
          Container(
            color: Theme.of(context).colorScheme.primary,
          ),
          Positioned(
            bottom: 0,
            child: FutureBuilder(
              future: Future.value(MediaQuery.of(context).size.height * 0.7),
              builder: (context, snapshot) => AnimatedContainer(
                duration: Duration(milliseconds: 350),
                height: snapshot.data ?? 0.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
