import 'package:dart_dersleri/nesne_tabanli/araba.dart';

void main(){
  //Nesne oluşturma
  var bmw = Araba(renk: "beyaz", hiz: 140, calisiyorMu: true);
  //Değer Okuma
  bmw.bilgiAl();

  //Değer Atama
  bmw.hiz = 80;
  bmw.bilgiAl();

  bmw.durdur();
  bmw.bilgiAl();
  bmw.calistir();
  bmw.hizlan(70);
  bmw.bilgiAl();
  bmw.yavasla(10);
  bmw.bilgiAl();


  var sahin = Araba(renk: "kırmızı", hiz:0, calisiyorMu: false);
  sahin.bilgiAl();
  sahin.calistir();
  sahin.hizlan(60);
  sahin.bilgiAl();
  sahin.yavasla(10);
  sahin.bilgiAl();
}