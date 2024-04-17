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
                builder: (context, snapshot) {
                  return AnimatedContainer(
                    height: snapshot.data ?? 0,
                    duration: Duration(milliseconds: 350),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  );
                }),
          ),
          Positioned(
            bottom: (MediaQuery.of(context).size.height * 0.7) - 50,
            width: (MediaQuery.of(context).size.width) - 50,
            child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.primary)),
          ),
          Positioned(
            bottom: (MediaQuery.of(context).size.height * 0.7) - 44,
            width: (MediaQuery.of(context).size.width) - 50,
            child: Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: kElevationToShadow[3]),
              child: Icon(
                Icons.person,
                size: 70,
              ),
            ),
          )
        ],
      ),
    );
  }
}
