import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    const space = 20.0;
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
        ),
        SizedBox(
          width: space,
        ),
        Icon(
          Icons.help_outline_outlined,
          color: Colors.white,
        ),
        SizedBox(
          width: space,
        ),
        Icon(
          Icons.mail_outline_outlined,
          color: Colors.white,
        ),
        SizedBox(
          width: space,
        )
      ],
      bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 16.0),
                child: Text(
                  "Olá, Ricardo",
                  style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontFeatures: [FontFeature.swash(1)]),
                ),
              ),
            ],
          )),
    ));
  }
}
