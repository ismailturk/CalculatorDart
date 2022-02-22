import 'package:calculator/Widgets/buttontasarimi.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(HesapMakinesi());

class HesapMakinesi extends StatefulWidget {
  const HesapMakinesi({Key? key}) : super(key: key);

  @override
  _HesapMakinesiState createState() => _HesapMakinesiState();
}

class _HesapMakinesiState extends State<HesapMakinesi> {
  late int sayi1;
  late int sayi2;
  String islemGecmisi = "";
  String gosterilecekSayi = "";
  late String sonuc;
  late String islemTutucu;

  void btnTiklama(String buttonDegeriTutucu) {
    print(buttonDegeriTutucu);

    switch (buttonDegeriTutucu) {
      case "AC":
        {
          gosterilecekSayi = "";
          sonuc = "";
          islemGecmisi = "";
          islemTutucu = "";
          sayi1 = 0;
          sayi2 = 0;
        }
        break;
      case "C":
        {
          gosterilecekSayi = "";
          sonuc = "";
          sayi1 = 0;
          sayi2 = 0;
        }
        break;
      case "BACK":
        {
          sonuc = gosterilecekSayi.substring(0, gosterilecekSayi.length - 1);
        }
        break;
      case "/":
        {
          sayi1 = int.parse(gosterilecekSayi);
          sonuc = "";
          islemTutucu = buttonDegeriTutucu;
        }
        break;
      case "X":
        {
          sayi1 = int.parse(gosterilecekSayi);
          sonuc = "";
          islemTutucu = buttonDegeriTutucu;
        }
        break;
      case "-":
        {
          sayi1 = int.parse(gosterilecekSayi);
          sonuc = "";
          islemTutucu = buttonDegeriTutucu;
        }
        break;
      case "+":
        {
          sayi1 = int.parse(gosterilecekSayi);
          sonuc = "";
          islemTutucu = buttonDegeriTutucu;
        }
        break;
      case "=":
        {
          sayi2 = int.parse(gosterilecekSayi);
          if (islemTutucu == "+") {
            sonuc = (sayi1 + sayi2).toString();
            islemGecmisi =
                sayi1.toString() + islemTutucu.toString() + sayi2.toString();
          }
          else if (islemTutucu == "-") {
            sonuc = (sayi1 - sayi2).toString();
            islemGecmisi =
                sayi1.toString() + islemTutucu.toString() + sayi2.toString();
          }
          else if (islemTutucu == "/") {
            sonuc = (sayi1 / sayi2).toString();
            islemGecmisi =
                sayi1.toString() + islemTutucu.toString() + sayi2.toString();
          }
          else if (islemTutucu == "X") {
            sonuc = (sayi1 * sayi2).toString();
            islemGecmisi =
                sayi1.toString() + islemTutucu.toString() + sayi2.toString();
          }
        }
        break;
      case "+/-":
        {

          sonuc=(int.parse(sonuc)*(-1)).toString();
        }
        break;

      default:
        {
          sonuc = int.parse(gosterilecekSayi + buttonDegeriTutucu).toString();
        }
    }
    setState(() {
      gosterilecekSayi = sonuc;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hesap Makinesi"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment(1, 1),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  islemGecmisi,
                  style: GoogleFonts.rubik(
                      textStyle:
                          TextStyle(fontSize: 30, color: Colors.black45)),
                ),
              ),
            ),
            Container(
              alignment: Alignment(1, 1),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  gosterilecekSayi,
                  style: GoogleFonts.rubik(
                      textStyle:
                          TextStyle(fontSize: 50, color: Colors.black87)),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //eksende ortalma
              children: [
                HesapMakinesiButton(
                  metin: "AC",
                  dolguRengi: Colors.deepPurple,
                  metinRengi: Colors.white,
                  metinBoyutu: 30,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButton(
                  metin: "C",
                  dolguRengi: Colors.deepPurple,
                  metinRengi: Colors.white,
                  metinBoyutu: 30,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButton(
                  metin: "BACK",
                  dolguRengi: Colors.pink,
                  metinRengi: Colors.white,
                  metinBoyutu: 18,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButton(
                  metin: "/",
                  dolguRengi: Colors.pink,
                  metinRengi: Colors.white,
                  metinBoyutu: 30,
                  tiklama: btnTiklama,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //eksende ortalma
              children: [
                HesapMakinesiButton(
                  metin: "9",
                  dolguRengi: Colors.deepPurple,
                  metinRengi: Colors.white,
                  metinBoyutu: 30,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButton(
                  metin: "8",
                  dolguRengi: Colors.deepPurple,
                  metinRengi: Colors.white,
                  metinBoyutu: 30,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButton(
                  metin: "7",
                  dolguRengi: Colors.deepPurple,
                  metinRengi: Colors.white,
                  metinBoyutu: 30,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButton(
                  metin: "X",
                  dolguRengi: Colors.pink,
                  metinRengi: Colors.white,
                  metinBoyutu: 30,
                  tiklama: btnTiklama,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //eksende ortalma
              children: [
                HesapMakinesiButton(
                  metin: "6",
                  dolguRengi: Colors.deepPurple,
                  metinRengi: Colors.white,
                  metinBoyutu: 30,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButton(
                  metin: "5",
                  dolguRengi: Colors.deepPurple,
                  metinRengi: Colors.white,
                  metinBoyutu: 30,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButton(
                  metin: "4",
                  dolguRengi: Colors.deepPurple,
                  metinRengi: Colors.white,
                  metinBoyutu: 30,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButton(
                  metin: "-",
                  dolguRengi: Colors.pink,
                  metinRengi: Colors.white,
                  metinBoyutu: 30,
                  tiklama: btnTiklama,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //eksende ortalma
              children: [
                HesapMakinesiButton(
                  metin: "3",
                  dolguRengi: Colors.deepPurple,
                  metinRengi: Colors.white,
                  metinBoyutu: 30,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButton(
                  metin: "2",
                  dolguRengi: Colors.deepPurple,
                  metinRengi: Colors.white,
                  metinBoyutu: 30,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButton(
                  metin: "1",
                  dolguRengi: Colors.deepPurple,
                  metinRengi: Colors.white,
                  metinBoyutu: 30,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButton(
                  metin: "+",
                  dolguRengi: Colors.pink,
                  metinRengi: Colors.white,
                  metinBoyutu: 30,
                  tiklama: btnTiklama,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //eksende ortalma
              children: [
                HesapMakinesiButton(
                  metin: "+/-",
                  dolguRengi: Colors.deepPurple,
                  metinRengi: Colors.white,
                  metinBoyutu: 30,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButton(
                  metin: "0",
                  dolguRengi: Colors.deepPurple,
                  metinRengi: Colors.white,
                  metinBoyutu: 30,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButton(
                  metin: "00",
                  dolguRengi: Colors.deepPurple,
                  metinRengi: Colors.white,
                  metinBoyutu: 30,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButton(
                  metin: "=",
                  dolguRengi: Colors.pink,
                  metinRengi: Colors.white,
                  metinBoyutu: 30,
                  tiklama: btnTiklama,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
