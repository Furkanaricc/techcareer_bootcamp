import 'package:ogrenciler/sqlite/veritabani_yardimcisi.dart';
import '../entitiy/ogrenciler.dart';

class OgrencilerDaoRepository {

  Future<List<Ogrenciler>> ogrencilerYukle() async {

  var db =await VeritabaniYardimcisi.veritabaniErisim();
  List<Map<String,dynamic>> satirlar = await db.rawQuery("SELECT * FROM ogrenciler");

  return List.generate(satirlar.length, (index) {
    var satir = satirlar[index];
    var ogrenci_no = satir["ogrenci_no"];
    var ogrenci_ad= satir["ogrenci_ad"];

    return Ogrenciler(ogrenci_no: ogrenci_no, ogrenci_ad: ogrenci_ad);
  });
}
  Future<void> kaydet(String ogrenci_ad) async{
    var db = await VeritabaniYardimcisi.veritabaniErisim();

    var yeniOgrenci = Map<String,dynamic>();

    yeniOgrenci["ogrenci_ad"] = ogrenci_ad;

    await db.insert("ogrenciler", yeniOgrenci);
  }

  Future<List<Ogrenciler>>ara(String aramaKelimesi)async{

    var db = await VeritabaniYardimcisi.veritabaniErisim();
    List<Map<String,dynamic>> satirlar = await db.rawQuery("SELECT * FROM ogrenciler WHERE ogrenci_ad like'%$aramaKelimesi%'");

    return List.generate(satirlar.length, (index){
      var satir = satirlar[index];
      var ogrenci_no = satir["ogrenci_no"];
      var ogrenci_ad = satir["ogrenci_ad"];
      
      return Ogrenciler(ogrenci_no: ogrenci_no, ogrenci_ad: ogrenci_ad);
    });
  }

  Future<void> sil(int ogrenci_no) async{
    var db = await VeritabaniYardimcisi.veritabaniErisim();

    await db.delete("ogrenciler",where: "ogrenci_no = ?",whereArgs: [ogrenci_no]);
  }

  Future<void>guncelle(int ogrenci_no ,String ogrenci_ad )async{
    var db = await VeritabaniYardimcisi.veritabaniErisim();

    var guncellenenOgrenci = Map<String,dynamic>();
    guncellenenOgrenci["ogrenci_no"] = ogrenci_no;
    guncellenenOgrenci["ogrenci_ad"] = ogrenci_ad;

    await db.update("ogrenciler", guncellenenOgrenci,where:"ogrenci_no = ?",whereArgs: [ogrenci_no]);

  }

}