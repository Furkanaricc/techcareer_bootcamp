import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odev_dort/SayfaA.dart';
import 'package:odev_dort/sayfaX.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SayfaA()));
            }, child: const Text("Sayfa A'ya Git")),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SayfaX()));
            }, child: const Text("Sayfa X'e Git"))
          ],
        ),
      ),
    );
  }
}
