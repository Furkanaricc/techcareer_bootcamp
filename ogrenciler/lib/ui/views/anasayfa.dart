import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ogrenciler/data/entitiy/ogrenciler.dart';
import '../cubit/anasayfa_cubit.dart';
import 'detay_sayfa.dart';
import 'kayit_sayfa.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  bool aramaYapiliyorMu = false;
  @override
  void initState(){
    super.initState();
    context.read<AnasayfaCubit>().ogrencileriYukle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: aramaYapiliyorMu ?
        TextField(
          decoration: InputDecoration(hintText: "Ara"),
          onChanged: (aramaSonucu){
            context.read<AnasayfaCubit>().ara(aramaSonucu);
          },
        ) :
        const Text("Ogrenciler"),
        actions: [
          aramaYapiliyorMu ?
          IconButton(onPressed: (){
            setState(() {
              aramaYapiliyorMu = false ;
            });
            context.read<AnasayfaCubit>().ogrencileriYukle();
          }, icon: Icon(Icons.clear)) :
          IconButton(onPressed: (){
            setState(() {
              aramaYapiliyorMu = true;
            });
          }, icon: Icon(Icons.search)),
          IconButton(onPressed: (){
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => KayitSayfa()))
                .then((value) {
              context.read<AnasayfaCubit>().ogrencileriYukle();
            });
          }, icon: const Icon(Icons.add), )
        ],
      ),
      body: BlocBuilder<AnasayfaCubit,List<Ogrenciler>>(
        builder: (context, ogrencilerList){
          if(ogrencilerList.isNotEmpty){

            return ListView.builder(
                itemCount: ogrencilerList.length,
                itemBuilder: (context,index){
                  var ogrenci = ogrencilerList[index];
              return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetaySayfa(ogrenci: ogrenci)))
                      .then((value) {
                    context.read<AnasayfaCubit>().ogrencileriYukle();
                  });
                },
                child: Card(
                  child: SizedBox(
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                       children: [
                         Text(ogrenci.ogrenci_no.toString() , style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                         const SizedBox(height: 10,width: 20,),
                         Text(ogrenci.ogrenci_ad,style: const TextStyle(fontSize: 18),),
                         const Spacer(),
                         IconButton(onPressed: (){
                           context.read<AnasayfaCubit>().sil(ogrenci.ogrenci_no);
                         }, icon:const  Icon(Icons.delete)),

                       ],
                      ),
                    ),
                  ),
                ),
              );
            });
          }else{
            return const Center(
                child: Text("Öğrenciler yüklenemedi."),
            );
          }
        }
      ),


    );
  }
}
