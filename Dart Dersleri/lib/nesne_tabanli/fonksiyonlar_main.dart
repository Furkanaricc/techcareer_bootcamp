import 'package:dart_dersleri/nesne_tabanli/fonksiyonlar.dart';

void main(){
  var f=Fonksiyolar();

  f.selamla();

  String gelenSonuc = f.selamla1();
  print("Gelen Sonuç : $gelenSonuc");

  f.selamla2("Furkan");

  int gelenToplam = f.toplama(516 , 9874);
  print("gelen toplam : $gelenToplam");
}