import 'dart:math';

import 'package:arc_sulama/ui/cubit/anasayfa_cubit.dart';
import 'package:arc_sulama/ui/cubit/detay_sayfa_cubit.dart';
import 'package:arc_sulama/ui/views/ayarlar_sayfa.dart';
import 'package:arc_sulama/ui/views/detay_sayfa.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/entitiy/vanalar.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  bool acikMi = false;

  @override
  void initState(){
    super.initState();
    context.read<AnasayfaCubit>().vanalariYukle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
        Container(height: 80,width: 160,
            child: Image.asset("image/arc.png")),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context) => AyarlarSayfa()));
          }, icon: Icon(Icons.settings))
        ],

      ),

      body: ListView(
        children:[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){},
              child: Card(
                child:Container(
                  decoration:  BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(24)

                  ),
                  child: SizedBox(height: 120,width: 300,
                    child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 80,width: 80,
                            child: Image.asset("image/sprinkler(1).png")),
                        const Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Otomatik Mod",style: TextStyle(fontSize: 24,fontWeight:FontWeight.bold,fontStyle:FontStyle.italic ),),
                            Text("Zaman ayarlamaları",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,fontStyle:FontStyle.italic ),),

                          ],
                        ),
                        IconButton(onPressed: (){}, icon:const Icon(Icons.alarm_add_sharp,size: 40,)),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
         SizedBox(height: 1800,
           child: BlocBuilder<AnasayfaCubit,List<Vanalar>>(
                   builder: (context,vanalarListesi){
            if(vanalarListesi.isNotEmpty){
              return GridView.builder(
                itemCount: vanalarListesi.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 0.8 ),
                  itemBuilder:(context,index){
                  var vana =vanalarListesi[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetaySayfa(vana: vana)));
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(24),),

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox( height: 150,width: 120,
                            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox( height: 80,width: 80,
                                    child: Image.asset("image/sprinkler(1).png")),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(vana.vana_adi,style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),

                                    Transform.rotate(
                                      angle: pi /2 ,
                                      child: CupertinoSwitch(value: acikMi , onChanged: (value){
                                        if(acikMi == true ){
                                          vana.power_on = 1;
                                        }else{
                                          vana.power_on = 0;
                                        }
                                      },

                                      ),
                                    )
                                    /*CupertinoSwitch(
                                        value: false,
                                        onChanged: (bool? value){
                                          setState(() {

                                          });
                                        }
                                    ),*/
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                  }
              );
            }else {
              return Text("hata");
            }
                   }
                   ),
         ),
      ]),
    );
  }
}
