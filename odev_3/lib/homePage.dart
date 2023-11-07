import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odev_3/egzersizPage.dart';
import 'package:odev_3/renkler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Ekran Yuksekliği: $ekranYuksekligi,");
    print("Ekran Genisliği: $ekranGenisligi");

    return Scaffold(
      appBar: AppBar(
        title:
        Text("Home Gym",
          style: TextStyle(
              color: araRenk1,
              fontFamily: "PlayfairDisplay-VariableFont_wght",
              fontSize: ekranGenisligi/12),),
        centerTitle: true,
        backgroundColor: anaRenk,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

        Image.asset("resimler/odev3-image1.png"),
          Text("Antrenmana Hazır Mısın ? ",
            style: TextStyle(
              color: Colors.orange,
              fontFamily: "PlayfairDisplay-VariableFont_wght",
            fontSize: ekranGenisligi/16),),
          Text("Çalışmak istediğin bölgeyi seç ve hemen başla !",
            style: TextStyle(color: anaRenk,fontSize: ekranGenisligi/24),),
          Row(
            children: [
              TextButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EgzersizPage(),
                  ),
                );
              },
                child: Text("Göğüs",style: TextStyle(color: araRenk1),),
                style: TextButton.styleFrom(backgroundColor: anaRenk),
              ),
              SizedBox(width: 3,),
              TextButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EgzersizPage(),
                  ),
                );
              },
                child: Text("Sırt",style: TextStyle(color: araRenk1),),
                style: TextButton.styleFrom(backgroundColor: anaRenk),
              ),
              SizedBox(width: 3,),
              TextButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EgzersizPage(),
                  ),
                );
              },
                child: Text("Omuz",style: TextStyle(color: araRenk1),),
                style: TextButton.styleFrom(backgroundColor: anaRenk),
              ),
              SizedBox(width: 3,),
              TextButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EgzersizPage(),
                  ),
                );
              },
                child: Text("Arka Kol",style: TextStyle(color: araRenk1),),
                style: TextButton.styleFrom(backgroundColor: anaRenk),
              ),
              SizedBox(width: 3,),
              TextButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EgzersizPage(),
                  ),
                );
              },
                child: Text("Ön Kol",style: TextStyle(color: araRenk1),),
                style: TextButton.styleFrom(backgroundColor: anaRenk),
              ),
              SizedBox(width: 3,),
              TextButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EgzersizPage(),
                  ),
                );
              },
                child: Text("Bacak",style: TextStyle(color: araRenk1),),
                style: TextButton.styleFrom(backgroundColor: anaRenk),
              ),
            ],
          ),
        Container(
          child:Row(
            children: [
              CupertinoButton(child: Text( "Uzaktan P.T. Hizmeti Satın Al ",
                style: TextStyle(color: Colors.grey[700],fontSize: ekranGenisligi/24),),
                  onPressed: (){}, color: Colors.yellow[700],),
              Text("120 ₺",style: TextStyle(color: anaRenk  ,fontSize: 24) ,),
            ],

          ),
        ),
        ],
      ),
    );
  }
}
class Chip extends StatelessWidget {
  String icerik;

  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: anaRenk,
      ),
      onPressed: () {},
      child: Text(
        icerik,
        style: TextStyle(
          color: anaRenk,
          fontSize: 20,
        ),
      ),
    );

  }
}
