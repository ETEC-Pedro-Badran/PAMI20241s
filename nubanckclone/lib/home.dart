import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: Column(
          children: [saldoConta(), opcoesConta(), meusCartoes()],
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
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: SizedBox(
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            opcao(Icons.pix_outlined, "Pix"),
            opcao(Icons.payment, "Pagar"),
            opcao(Icons.track_changes, "Transferir"),
            opcao(Icons.all_inclusive, "Depositar"),
            opcao(Icons.inventory, "Investir"),
            opcao(Icons.security_rounded, "Seguro"),
          ],
        ),
      ),
    );
  }

  opcao(IconData icone, String texto) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Column(
        children: [
          Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                shape: BoxShape.circle,
              ),
              child: Icon(icone)),
          Text(
            texto,
            style: GoogleFonts.nunito(fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }

  meusCartoes() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Container(
              height: 45,
              width: 450,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  SizedBox(
                    width: 12,
                  ),
                  Icon(CupertinoIcons.creditcard),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "Meus cartões",
                    style: GoogleFonts.nunito(
                        fontSize: 15, fontWeight: FontWeight.w700),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
