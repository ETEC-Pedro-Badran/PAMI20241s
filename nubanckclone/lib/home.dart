import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              saldoConta(),
              opcoesConta(),
              meusCartoes(),
              aviso(),
              saldoCartao()
            ],
          ),
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
        height: 110,
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
              height: 50,
              width: 300,
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

  aviso() {
    return Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              cartao("Você tem R\$1000,00\ndisponível para empréstimo."),
              cartao("Conquiste sua casa própria.\nConheça nossas propostas."),
            ],
          ),
        ));
  }

  cartao(String texto) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(8)),
        height: 100,
        width: 300,
        child: Center(
            child: Text(
          texto,
          style: GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.w600),
        )),
      ),
    );
  }

  saldoCartao() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 10, top: 25, bottom: 20),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.credit_card),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Cartão de Crédito",
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
                "Fatura atual",
                style: GoogleFonts.workSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600]),
              ),
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
          ),
          Row(
            children: [
              Text(
                "Limite disponível: R\$806,78",
                style: GoogleFonts.workSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
