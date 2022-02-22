import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HesapMakinesiButton extends StatelessWidget {
  final String metin;
  final Color dolguRengi;
  final Color metinRengi;
  final double metinBoyutu;
  final Function tiklama;

  const HesapMakinesiButton(
      {required this.metin,
      required this.dolguRengi,
      required this.metinRengi,
      required this.metinBoyutu,
      required this.tiklama
   });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: SizedBox(
        width: 80,
        height: 80,
        child: FlatButton(
          onPressed: () {
            tiklama(metin);
          },
          color:dolguRengi,
          textColor: metinRengi,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Text(
            metin,
            style: GoogleFonts.eczar(
                textStyle: TextStyle(
              fontSize: metinBoyutu,
            )),
          ),
        ),
      ),
    );
  }
}
