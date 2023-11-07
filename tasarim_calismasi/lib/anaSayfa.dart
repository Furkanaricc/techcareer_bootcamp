import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {


    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Ekran Yuksekliği: $ekranYuksekligi,");
    print("Ekran Genisliği: $ekranGenisligi");

    return Scaffold(
      appBar: AppBar(
        title:  Text("Pizza",style: TextStyle(color: yaziRenk1,fontFamily: "Pacifico",fontSize: 22),),
        centerTitle: true,
        backgroundColor:anaRenk
        ,),
      body:Column(
       children: [
         Text("Beef Cheese",style: TextStyle(fontSize: 36,color: anaRenk,fontWeight: FontWeight.bold),),
         Image.asset("resimler/pizza_resim.png"),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             TextButton(onPressed: (){},
                 child: Text("Cheese",style: TextStyle(color: yaziRenk1),),
                style: TextButton.styleFrom(backgroundColor: anaRenk),
             ),
             TextButton(onPressed: (){},
               child: Text("Sausage",style: TextStyle(color: yaziRenk1),),
               style: TextButton.styleFrom(backgroundColor: anaRenk),
             ),
             TextButton(onPressed: (){},
               child: Text("Olive",style: TextStyle(color: yaziRenk1),),
               style: TextButton.styleFrom(backgroundColor: anaRenk),
             ),
             TextButton(onPressed: (){},
               child: Text("Pepper",style: TextStyle(color: yaziRenk1),),
               style: TextButton.styleFrom(backgroundColor: anaRenk),
             ),

           ],
         ),
         Column(
           children: [
             Text("20 min",style: TextStyle(fontSize: 22,color: yaziRenk2,fontWeight: FontWeight.bold),),
             Text("Delivery",style: TextStyle(fontSize: 22,color: anaRenk ,fontWeight: FontWeight.bold),),
             Padding(
               padding: const EdgeInsets.only(left: 16.0,right: 16.0),
               child: Text("Meat lover, get ready to meet your pizza ! ",
                 style: TextStyle(fontSize: 22,color: yaziRenk2),textAlign: TextAlign.center,),
             ),

           ],
         ),
       ],
      ),
    );
  }
}
