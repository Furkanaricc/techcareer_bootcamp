import 'package:arc_sulama/ui/views/vana_ekle_sayfa.dart';
import 'package:flutter/material.dart';

class AyarlarSayfa extends StatefulWidget {
  const AyarlarSayfa({Key? key}) : super(key: key);

  @override
  State<AyarlarSayfa> createState() => _AyarlarSayfaState();
}

class _AyarlarSayfaState extends State<AyarlarSayfa> {
  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Ekran Yuksekliği: $ekranYuksekligi,");
    print("Ekran Genisliği: $ekranGenisligi");

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: (){},
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(24)
                  ),
                  height: 120,width: ekranGenisligi,
                  child: const Row(
                    children: [
                      SizedBox(height:10,width:10 ),
                      Icon(Icons.bluetooth),
                      SizedBox(height:10,width:10 ),
                      Text("Bluetooth Bağlantı Kur",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 24,fontWeight: FontWeight.bold),),
                    ],
                  ),

              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 8.0),
            child: GestureDetector(
                onTap: (){},
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(24)
                  ),
                  height: 120,width: ekranGenisligi,
                  child: const Row(
                    children: [
                      SizedBox(height:10,width:10 ),
                      Icon(Icons.wifi),
                      SizedBox(height:10,width:10 ),
                      Text("Wifi Bağlantı Kur ",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 24,fontWeight: FontWeight.bold),),
                    ],
                  )

                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => VanaEkleSayfa()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(24)
                  ),
                  height: 120,width: ekranGenisligi,
                  child: const Row(
                    children: [
                      SizedBox(height:10,width:10 ),
                      Icon(Icons.add_circle_outline),
                      SizedBox(height:10,width:10 ),
                      Text("Vana Ekle",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 24,fontWeight: FontWeight.bold),),
                    ],
                  ),

                )
            ),
          )
        ],
      ),
    );
  }
}
