import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/entitiy/vanalar.dart';
import '../cubit/detay_sayfa_cubit.dart';

class DetaySayfa extends StatefulWidget {
  Vanalar vana;
 DetaySayfa({required this.vana});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {

  var tfVanaAdi = TextEditingController();

  @override
  void initState() {
    super.initState();
    var vana = widget.vana;
    tfVanaAdi.text = vana.vana_adi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vana Detay"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(controller: tfVanaAdi,decoration: const InputDecoration(hintText: "Vana Adı "),),

              ElevatedButton(onPressed: (){
                context.read<DetaySayfaCubit>().guncelle(widget.vana.vana_id, tfVanaAdi.text, 0);
                Navigator.pop(context);
              }, child: const Text("Güncelle")),
            ],
          ),
        ),
      ),
    );
  }
}
