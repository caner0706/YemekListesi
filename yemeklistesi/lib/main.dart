import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const YemekListesi());
}

class YemekListesi extends StatelessWidget {
  const YemekListesi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Yemek Listesi",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.red[100],
          ),
          body: YemekSayfasi()),
    );
  }
}

class YemekSayfasi extends StatefulWidget  {

  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {

  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  List<String> corbaAdlari = ["Mercimek","Tarhana","Tavuksuyu","Düğün Çorbası","Yoğurtlu Çorba"];
  List<String> yemekAdlari = ["Karnıyarık","Mantı","Kuru Fasülye","İçli Köfte","Izgara Balık"];
  List<String> tatliAdlari = ["Kadayıf","Baklava","Sütlaç","Kazandibi","Dondurma"];

  void ResimDegistir(){
    setState(() {
      corbaNo = Random().nextInt(5)+1;
      yemekNo = Random().nextInt(5)+1;
      tatliNo = Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  ResimDegistir();
                },
                child: Image.asset('assets/corba_$corbaNo.jpg'),
              ),
            ),
          ),
          Text(
            corbaAdlari[corbaNo-1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 220,
            child: const Divider(
              height: 5,
              color: Colors.black,

            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  ResimDegistir();
                },
                child: Image.asset('assets/yemek_$yemekNo.jpg'),
              ),
            ),
          ),
          Text(
            yemekAdlari[yemekNo-1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 220,
            child: const Divider(
              height: 5,
              color: Colors.black,

            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  ResimDegistir();
                },
                child: Image.asset('assets/tatli_$tatliNo.jpg'),
              ),
            ),
          ),
          Text(
            tatliAdlari[tatliNo-1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 220,
            child: const Divider(
              height: 5,
              color: Colors.black,

            ),
          ),
        ],
      ),
    );
  }
}


