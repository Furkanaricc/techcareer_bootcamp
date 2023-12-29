import 'package:arc_sulama/sqlite/veritabani_yardimcisi.dart';

import '../entitiy/vanalar.dart';

class VanalarDaoRepository {

  Future<List<Vanalar>>vanalariYukle()async{
//veritabanina erişiyorum
    var db = await VeritabaniYardimcisi.veritabaniErisim();
    List<Map<String,dynamic>> satirlar = await db.rawQuery("SELECT * FROM vanalar");
//eriştiğim tablonun tümünü getiriyorum
    //tamamını listeye sarıp alıcam
    return List.generate(satirlar.length, (index){
      //listeye sardım. sırayla her ögenin değişkenlerini alıyorum
      var satir = satirlar[index];
      int vana_id = satir["vana_id"];
      String vana_adi = satir["vana_adi"];
      int power_on = satir["power_on"];
    //nesneyi oluşturuyor döndürüyorum
      return Vanalar(vana_id: vana_id, vana_adi: vana_adi, power_on: power_on);
    });
  }
  Future<void> ekle (String vana_adi, int power_on) async{
    var db = await VeritabaniYardimcisi.veritabaniErisim();

    var yeniVana = Map<String,dynamic>();
    yeniVana ["vana_adi"] = vana_adi;
    yeniVana ["power_on"] = power_on;
    await db.insert("vanalar", yeniVana);
     vanalariYukle();
  }
  Future<void>guncelle(int vana_id, String vana_adi,int power_on )async{
    var db = await VeritabaniYardimcisi.veritabaniErisim();

    var guncellenenVana = Map<String,dynamic>();
    guncellenenVana["vana_adi"] = vana_adi;
    guncellenenVana["power_on"] = power_on;

    await db.update("vanalar", guncellenenVana,where:"vana_id = ?",whereArgs: [vana_id]);

  }

}