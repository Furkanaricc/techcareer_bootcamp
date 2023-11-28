import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ogrenciler/data/entitiy/ogrenciler.dart';

import '../cubit/detay_sayfa_cubit.dart';

class DetaySayfa extends StatefulWidget {
  Ogrenciler ogrenci;

  DetaySayfa({required this.ogrenci});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {

  var tfOgrenciAd = TextEditingController();

  @override
  void initState() {

    super.initState();
    var ogrenci = widget.ogrenci;
    tfOgrenciAd.text = ogrenci.ogrenci_ad;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Kişi Detay"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(controller: tfOgrenciAd,decoration: const InputDecoration(hintText: "Öğrenci Adı "),),

              ElevatedButton(onPressed: (){
                context.read<DetaySayfaCubit>().guncelle(widget.ogrenci.ogrenci_no, tfOgrenciAd.text);
              }, child: const Text("Güncelle")),
            ],
          ),
        ),
      ),
    );
  }
}
