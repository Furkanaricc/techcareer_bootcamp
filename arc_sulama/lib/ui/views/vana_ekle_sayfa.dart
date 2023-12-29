import 'package:arc_sulama/ui/cubit/vana_ekle_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VanaEkleSayfa extends StatefulWidget {
  const VanaEkleSayfa({Key? key}) : super(key: key);

  @override
  State<VanaEkleSayfa> createState() => _VanaEkleSayfaState();
}

class _VanaEkleSayfaState extends State<VanaEkleSayfa> {

  var tfVanaAdi = TextEditingController();
  var tfPowerOn = TextEditingController();

  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Ekran Yuksekliği: $ekranYuksekligi,");
    print("Ekran Genisliği: $ekranGenisligi");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Vana Ekle"),
      ),
      body: Center(
        child: Column(
          children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(height: 30,width: ekranGenisligi,
               child: TextField(controller: tfVanaAdi,decoration: const InputDecoration(hintText: "Vana Adı"),),
             ),
           ),
            /*Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0),
              child: Container(height: 30,width: ekranGenisligi,
                child: TextField(controller: tfPowerOn,decoration: const InputDecoration(hintText: "Güç Durumu"),),
              ),
            ),*/
            ElevatedButton(onPressed: (){
              context.read<VanaEkleSayfaCubit>().vanaEkle(tfVanaAdi.text, 0);

            }, child: Text("Kaydet")),

          ],
        ),
      ),
    );
  }
}
