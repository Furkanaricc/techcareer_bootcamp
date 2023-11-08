import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odev_dort/sayfaY.dart';

class SayfaX extends StatefulWidget {
  const SayfaX({Key? key}) : super(key: key);

  @override
  State<SayfaX> createState() => _SayfaXState();
}

class _SayfaXState extends State<SayfaX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Sayfa X"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>SayfaY()));
            },
                child: const Text("Sayfa Y'ye Git"))
          ],
        ),
      ),
    );
  }
}
