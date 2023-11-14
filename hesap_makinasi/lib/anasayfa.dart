import 'dart:ffi';

import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  String input="";
  String sonucDeger = "";

  void esittir() {
    setState(() {
      try {
        // "+" işlemi kontrolü
        if (input.contains("+")) {
          List<String> sayilar = input.split("+");
          if (sayilar.length == 2) {
            double sayi1 = double.tryParse(sayilar[0]) ?? 0.0;
            double sayi2 = double.tryParse(sayilar[1]) ?? 0.0;
            double toplam = sayi1 + sayi2;
            sonucDeger = "$toplam";
          } else {
            input = 'Error';
          }
        } else {
          input = 'Error';
        }
      } catch (e) {
        input = 'Error';
      }
    });
  }
  void buttonPress(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        input = '';
        sonucDeger = '';
      } else if (buttonText == "=") {
        esittir();
      } else {
        input += buttonText;
      }
    });
  }
  double eval(String expression) {
    try {
      return double.parse(expression);
    } catch (e) {
      return 0.0;
    }
  }


  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(title: Text("Hesap Makinası"),),
      body: Center(
        child: Column(
          children: [
            Container(height: ekranYuksekligi / 4,
              width: ekranGenisligi,
              color: Colors.orange,
              child: Column(
                children: [
                  Text(input,style: const TextStyle(fontSize: 42),),
                  Text(sonucDeger,style: const TextStyle(fontSize: 42),),

                ],
              )

            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                    height: ekranYuksekligi / 8, width: ekranGenisligi / 4,
                    child: ElevatedButton(onPressed: () { buttonPress("7"); },
                        child: const Text(
                          "7", style: TextStyle(fontSize: 24),))),
                Container(
                    height: ekranYuksekligi / 8, width: ekranGenisligi / 4,
                    child: ElevatedButton(onPressed: () {buttonPress("8");},
                        child: const Text(
                          "8", style: TextStyle(fontSize: 24),))),
                Container(
                    height: ekranYuksekligi / 8, width: ekranGenisligi / 4,
                    child: ElevatedButton(onPressed: () {buttonPress("9");},
                        child: const Text(
                          "9", style: TextStyle(fontSize: 24),))),
                Container(
                    height: ekranYuksekligi / 8, width: ekranGenisligi / 4,
                    child: ElevatedButton(onPressed: () {buttonPress("C");},
                        child: const Text(
                          "C", style: TextStyle(fontSize: 24),))),
              ],
            ),
            Row(
              children: [
                Container(
                    height: ekranYuksekligi / 8, width: ekranGenisligi / 4,
                    child: ElevatedButton(onPressed: () {buttonPress("4");},
                        child: const Text(
                          "4", style: TextStyle(fontSize: 24),))),
                Container(
                    height: ekranYuksekligi / 8, width: ekranGenisligi / 4,
                    child: ElevatedButton(onPressed: () {buttonPress("5");},
                        child: const Text(
                          "5", style: TextStyle(fontSize: 24),))),
                Container(
                    height: ekranYuksekligi / 8, width: ekranGenisligi / 4,
                    child: ElevatedButton(onPressed: () {buttonPress("6");},
                        child: const Text(
                          "6", style: TextStyle(fontSize: 24),))),
                Container(
                    height: ekranYuksekligi / 8, width: ekranGenisligi / 4,
                    child: ElevatedButton(onPressed: () {buttonPress("*");},
                        child: const Text(
                          "x", style: TextStyle(fontSize: 24),))),
              ],
            ),
            Row(
              children: [
                Container(
                    height: ekranYuksekligi / 8, width: ekranGenisligi / 4,
                    child: ElevatedButton(onPressed: () {buttonPress("1");},
                        child: const Text(
                          "1", style: TextStyle(fontSize: 24),))),
                Container(
                    height: ekranYuksekligi / 8, width: ekranGenisligi / 4,
                    child: ElevatedButton(onPressed: () {buttonPress("2");},
                        child: const Text(
                          "2", style: TextStyle(fontSize: 24),))),
                Container(
                    height: ekranYuksekligi / 8, width: ekranGenisligi / 4,
                    child: ElevatedButton(onPressed: () {buttonPress("3");},
                        child: const Text(
                          "3", style: TextStyle(fontSize: 24),))),
                Container(
                    height: ekranYuksekligi / 8, width: ekranGenisligi / 4,
                    child: ElevatedButton(onPressed: () {buttonPress("4");},
                        child: const Text(
                          "-", style: TextStyle(fontSize: 24),))),
              ],
            ),
            Row(
              children: [
                Container(
                    height: ekranYuksekligi / 8, width: ekranGenisligi / 4,
                    child: ElevatedButton(onPressed: () {buttonPress("0");},
                        child: const Text(
                          "0", style: TextStyle(fontSize: 24),))),
                Container(
                    height: ekranYuksekligi / 8, width: ekranGenisligi / 4,
                    child: ElevatedButton(onPressed: () {buttonPress(".");},
                        child: const Text(
                          ".", style: TextStyle(fontSize: 24),))),
                Container(
                    height: ekranYuksekligi / 8, width: ekranGenisligi / 4,
                    child: ElevatedButton(onPressed: () {buttonPress("/");},
                        child: const Text(
                          "/", style: TextStyle(fontSize: 24),))),
                Container(
                    height: ekranYuksekligi / 8, width: ekranGenisligi / 4,
                    child: ElevatedButton(onPressed: () {buttonPress("+");},
                        child: const Text(
                          "+", style: TextStyle(fontSize: 24),))),
              ],
            ),
            TextButton(onPressed: () {buttonPress("=");},
              child: const Text("=", style: TextStyle(fontSize: 42),),)
          ],
        ),
      ),
    );
  }





}