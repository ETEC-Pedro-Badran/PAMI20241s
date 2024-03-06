import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CircleAvatar(
          backgroundColor: Colors.white12,
          child: Icon(
            Icons.person_outlined,
            color: Colors.white70,
          ),
        ),
        backgroundColor: Colors.purpleAccent[700],
        actions: const [
          Icon(
            Icons.remove_red_eye_outlined,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
