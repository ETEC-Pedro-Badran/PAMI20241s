import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: Column(
          children: [saldoConta(), opcoesConta()],
        ));
  }

  appBar() {
    const space = 20.0;
    return AppBar(
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
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          )),
    );
  }

  saldoConta() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 10, top: 25, bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Conta",
                style: GoogleFonts.nunito(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 13,
              )
            ],
          ),
          Row(
            children: [
              Text(
                "R\$ 845,20",
                style: GoogleFonts.workSans(
                    fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ],
          )
        ],
      ),
    );
  }

  opcoesConta() {
    return SizedBox(
      height: 150,
    );
  }
}
