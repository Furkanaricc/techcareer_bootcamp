import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/ui/cubit/anasayfa_cubit.dart';
import 'package:netflix/ui/renkler.dart';

import '../../data/entitiy/diziler.dart';
import '../../data/entitiy/filmler.dart';
import '../../data/entitiy/populer.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  /* @override
  void initState(){
    super.initState();
    context.read<AnasayfaCubit>().verileriYukle();
  }*/
  Future<List<Populer>> populerYukle() async {
    var populerList = <Populer>[];
    var top1 = Populer(
        id: 1,
        isim: "İyi ki Aldatılmışım",
        resim: "resimler/aldatılmısım_film.jpg");
    var top2 =
        Populer(id: 2, isim: "Soygun Sanatı", resim: "resimler/soygu_film.jpg");
    var top3 =
        Populer(id: 3, isim: "Yaratılan", resim: "resimler/yaratılan-dizi.jpg");
    var top4 = Populer(
        id: 4,
        isim: "La Casa De Papel",
        resim: "resimler/la_casade_papel_dizi.webp");
    var top5 =
        Populer(id: 5, isim: "Bomboş", resim: "resimler/bombos_film.webp");
    var top6 = Populer(
        id: 6, isim: "Maymunlar 1", resim: "resimler/maymun_c_top.webp");
    var top7 = Populer(id: 7, isim: "Terzi", resim: "resimler/terzi_dizi.jpg");
    var top8 =
        Populer(id: 8, isim: "Maymun 2", resim: "resimler/maymun_2_top.webp");
    var top9 =
        Populer(id: 9, isim: "Bırd Box", resim: "resimler/bırd_box_film.webp");
    var top10 = Populer(
        id: 10, isim: "Mafya Babası", resim: "resimler/mafya_babası_dizi.jpg");
    populerList.add(top1);
    populerList.add(top2);
    populerList.add(top3);
    populerList.add(top4);
    populerList.add(top5);
    populerList.add(top6);
    populerList.add(top7);
    populerList.add(top8);
    populerList.add(top9);
    populerList.add(top10);
    return populerList;
  }

  Future<List<Filmler>> filmlerYukle() async {
    var filmlerList = <Filmler>[];
    var film1 = Filmler(
        id: 1,
        isim: "İyi ki Aldatılmışım",
        resim: "resimler/aldatılmısım_film.jpg");
    var film2 =
        Filmler(id: 2, isim: "Bırd Box", resim: "resimler/bırd_box_film.webp");
    var film3 =
        Filmler(id: 3, isim: "Bomboş", resim: "resimler/bombos_film.webp");
    var film4 = Filmler(
        id: 4, isim: "Esaret", resim: "resimler/yeni_zenginler_top.jpg");
    var film5 = Filmler(
        id: 5, isim: "Ketenpere", resim: "resimler/ketenpere_film.webp");
    var film6 = Filmler(
        id: 6, isim: "Maymunlar 1", resim: "resimler/maymun_c_top.webp");
    var film7 =
        Filmler(id: 7, isim: "Nowhere", resim: "resimler/nowhere_film.jpg");
    var film8 =
        Filmler(id: 8, isim: "Slıence", resim: "resimler/slıence_film.jpg");
    var film9 =
        Filmler(id: 9, isim: "Maymun 2", resim: "resimler/maymun_2_top.webp");
    var film10 =
        Filmler(id: 10, isim: "Triple", resim: "resimler/beliver2_film.jpg");
    var film11 = Filmler(
        id: 11, isim: "Soygun Sanatı", resim: "resimler/soygu_film.jpg");

    filmlerList.add(film1);
    filmlerList.add(film2);
    filmlerList.add(film3);
    filmlerList.add(film4);
    filmlerList.add(film5);
    filmlerList.add(film6);
    filmlerList.add(film7);
    filmlerList.add(film8);
    filmlerList.add(film9);
    filmlerList.add(film10);
    filmlerList.add(film11);

    return filmlerList;
  }

  Future<List<Diziler>> dizilerYukle() async {
    var dizilerList = <Diziler>[];
    var dizi1 =
        Diziler(id: 1, isim: "Bodies", resim: "resimler/bodıes_dizi.jpg");
    var dizi2 = Diziler(
        id: 2, isim: "Ceza Kanunu", resim: "resimler/ceza_kanunu_dizi.jpg");
    var dizi3 = Diziler(
        id: 3, isim: "Erşan Kuneri", resim: "resimler/erşan_kuneri_dizi.jpg");
    var dizi4 =
        Diziler(id: 4, isim: "Işıklar", resim: "resimler/ısıklar_dizi.jpg");
    var dizi5 = Diziler(
        id: 5,
        isim: "La Casa De Papel",
        resim: "resimler/la_casade_papel_dizi.webp");
    var dizi6 = Diziler(
        id: 6, isim: "Mafya Babası", resim: "resimler/mafya_babası_dizi.jpg");
    var dizi7 =
        Diziler(id: 7, isim: "Silencio", resim: "resimler/sılencıo_dizi.jpg");
    var dizi8 = Diziler(id: 8, isim: "Terzi", resim: "resimler/terzi_dizi.jpg");
    var dizi9 =
        Diziler(id: 9, isim: "Yaratılan", resim: "resimler/yaratılan-dizi.jpg");

    dizilerList.add(dizi1);
    dizilerList.add(dizi2);
    dizilerList.add(dizi3);
    dizilerList.add(dizi4);
    dizilerList.add(dizi5);
    dizilerList.add(dizi6);
    dizilerList.add(dizi7);
    dizilerList.add(dizi8);
    dizilerList.add(dizi9);

    return dizilerList;
  }
  String selectedCategory = "Categories";
  var categoryList =<String>[];

  @override
  void initState(){
    super.initState();
    categoryList.add("Series");
    categoryList.add("Films");
    categoryList.add("My List");
    categoryList.add("Populer on Netflix");
    categoryList.add (selectedCategory);
}

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Ekran Yuksekliği: $ekranYuksekligi,");
    print("Ekran Genisliği: $ekranGenisligi");

    return Scaffold(
        backgroundColor: tabBarRenk,
        appBar: AppBar(
          backgroundColor: tabBarRenk,
          title: Text(
            "Top Picks for You",
            style: TextStyle(color: yaziRenk, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.cast),
                color: yaziRenk),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                color: yaziRenk),
          ],
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: () {},style:ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(tabBarRenk),textStyle: MaterialStateProperty.all((TextStyle(color: Colors.white)))),child: const Text("Series"),),
                  ElevatedButton(onPressed: () {},style:ElevatedButton.styleFrom(backgroundColor: tabBarRenk), child: const Text("Films")),
                  ElevatedButton.icon(onPressed: (){},style:ElevatedButton.styleFrom(backgroundColor: tabBarRenk), label: Text("Categories"),icon: Icon(Icons.arrow_drop_down))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
              child: Card(
                child: Container(
                  height: ekranYuksekligi / 1.7,
                  width: ekranGenisligi / 1.17,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        "resimler/erşan_kuneri_dizi.jpg",
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  // decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.circular(0),
                                  //),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Comedy - Series",
                                        style: TextStyle(
                                            color: yaziRenk, fontSize: 18),
                                      ),
                                      Row(children: [
                                        ElevatedButton(
                                            onPressed: () {},
                                            child: const Row(
                                              children: [
                                                Icon(Icons.play_arrow),
                                                Text(
                                                  "Play",
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                )
                                              ],
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            )),
                                        const SizedBox(
                                          width: 10,
                                          height: 10,
                                        ),
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Row(
                                            children: [
                                              Icon(Icons.add),
                                              Text(
                                                "My List",
                                                style: TextStyle(fontSize: 18),
                                              )
                                            ],
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
              height: 10,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                  width: 15,
                ),
                Text("Continue Watching ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: SizedBox(
                    width: 100.0,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 150.0,
                          width: 150.0,
                          child: Stack(
                              children: [
                              Image.asset("resimler/aldatılmısım_film.jpg",
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,),
                                const Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children:[
                                  Row(
                                    children: [
                                      SizedBox(height: 10,width: 20,),
                                      Icon(Icons.play_circle_outline,size: 70.0,color: Colors.white70),
                                    ],
                                  ),
                                ]),
                    ]),
                        ),
                        const LinearProgressIndicator(
                            value: 50.0, color: Colors.red),
                        Row(
                          children: <Widget>[
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.info_outline,
                                  size: 22.0,
                                  color: yaziRenk,
                                )),
                            const SizedBox(height: 4,width: 4,),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.more_vert,
                                  size: 22.0,
                                  color: yaziRenk,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: SizedBox(
                    width: 100.0,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 150.0,
                          width: 150.0,
                          child:  Stack(
                              children: [
                                Image.asset("resimler/soygu_film.jpg",
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,),
                                const Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children:[
                                      Row(
                                        children: [
                                          SizedBox(height: 10,width: 20,),
                                          Icon(Icons.play_circle_outline,size: 70.0,color: Colors.white70,),
                                        ],
                                      ),
                                    ]),
                              ]),
                        ),
                        const LinearProgressIndicator(
                            value: 50.0, color: Colors.red),
                        Row(
                          children: <Widget>[
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.info_outline,
                                  size: 22.0,
                                  color: yaziRenk,
                                )),
                            const SizedBox(height: 4,width: 4,),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.more_vert,
                                  size: 22.0,
                                  color: yaziRenk,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
              height: 5,
            ),
            const Row(
              children: [
                SizedBox(
                  height: 10,
                  width: 15,
                ),
                Text("Populer on Netflix",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(
              width: 10,
              height: 5,
            ),
            SizedBox(
              height: 180,
              child: Column(
                children: [
                  FutureBuilder(
                    future: populerYukle(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        var populerList = snapshot.data;
                        return Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: populerList!.length,
                              itemBuilder: (context, indeks) {
                                var pop = populerList[indeks];
                                return GestureDetector(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: SizedBox(
                                        width: 128,
                                        height: 128,
                                        child: Image.asset("${pop.resim}")),
                                  ),
                                );
                              }),
                        );
                      } else {
                        return Text("Beklenmeyen bir yüklenme hatası alındı.");
                      }
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
              height: 5,
            ),
            const Row(
              children: [
                SizedBox(
                  height: 10,
                  width: 15,
                ),
                Text("Movies",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 180,
              child: Column(
                children: [
                  FutureBuilder(
                    future: filmlerYukle(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        var filmlerList = snapshot.data;
                        return Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: filmlerList!.length,
                              itemBuilder: (context, indeks) {
                                var film = filmlerList[indeks];
                                return GestureDetector(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: SizedBox(
                                        width: 128,
                                        height: 128,
                                        child: Image.asset("${film.resim}")),
                                  ),
                                );
                              }),
                        );
                      } else {
                        return Text("Beklenmeyen bir yüklenme hatası alındı.");
                      }
                    },
                  ),
                ],
              ),
            ),
            const Row(
              children: [
                SizedBox(
                  height: 10,
                  width: 15,
                ),
                Text("Series",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 180,
              child: Column(
                children: [
                  FutureBuilder(
                    future: dizilerYukle(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        var dizilerList = snapshot.data;
                        return Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: dizilerList!.length,
                              itemBuilder: (context, indeks) {
                                var dizi = dizilerList[indeks];
                                return GestureDetector(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: SizedBox(
                                        width: 128,
                                        height: 128,
                                        child: Image.asset("${dizi.resim}")),
                                  ),
                                );
                              }),
                        );
                      } else {
                        return Text("Beklenmeyen bir yüklenme hatası alındı.");
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),

        /**/
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: tabBarRenk,

          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled, color: Colors.white),
                label: "Home",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon:
                    Icon(Icons.video_collection_outlined, color: Colors.white),
                label: "New & Hot"),
            BottomNavigationBarItem(
                icon:ImageIcon(AssetImage("resimler/avatar.png")),
                label: "My Nexflix"),
          ],
        ));
  }
}
/*FutureBuilder(
future: populerYukle(),
builder: (context, snapshot) {
if (snapshot.hasData) {
var populerList = snapshot.data;
return ListView.builder(
scrollDirection: Axis.horizontal,
itemCount: populerList!.length,
itemBuilder: (context, indeks) {
var pop = populerList[indeks];
return GestureDetector(
onTap: () {},
child: SizedBox(
width: 128,
height: 128,
child: Image.asset("${pop.resim}")),
);
});
} else {
return Text("Beklenmeyen bir yüklenme hatası alındı.");
}
},
),*/
/*SingleChildScrollView(
scrollDirection: Axis.horizontal,
child: FutureBuilder<List<Populer>>(
future: populerYukle(),
builder: (context, snapshot) {
if (!snapshot.hasData || snapshot.data!.isEmpty) {
return Center(child: Text("Veri bulunamadı."));
} else {
var populerList = snapshot.data!;

return Row(
children: populerList.map((pop) {
return GestureDetector(
onTap: () {},
child: Container(
margin: EdgeInsets.only(left: 8),
width: 128,
height: 128,
child: Image.asset("${pop.resim}"),
),
);
}).toList(),
);
}
},
),
),*/
