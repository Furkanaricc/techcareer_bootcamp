import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'renkler.dart';

class EgzersizPage extends StatefulWidget {
  const EgzersizPage({Key? key}) : super(key: key);

  @override
  State<EgzersizPage> createState() => _EgzersizPageState();
}

class _EgzersizPageState extends State<EgzersizPage> {
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
        children: [

          Container(
            height: ekranYuksekligi/3,
            width: ekranGenisligi,
            child: Image.asset("resimler/odev3_resim3.png"),),

          Text("10 X 4 Barfiks ",style: TextStyle(color: araRenk2 ,fontSize: ekranGenisligi/16),),
          Container(
            height: ekranYuksekligi/4,
            width: ekranGenisligi,
            child: Image.asset("resimler/odev3_resim4.png"),),
          Text("10 X 4 Şınav ",style: TextStyle(color: araRenk2 ,fontSize: ekranGenisligi/16),),
        ],
      ),
    );
  }
}