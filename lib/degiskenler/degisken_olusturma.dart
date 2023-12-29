void main(){
  var ogrenciAdi = "Furkan";
  var ogrenciYas = 26;
  var ogrenciBoy= 1.78;
  var ogrenciBasHarf = 'F';
  var ogrenciDevamEdiyorMu = true;

  print(ogrenciAdi);
  print(ogrenciYas);
  print(ogrenciBoy);
  print(ogrenciBasHarf);
  print(ogrenciDevamEdiyorMu);


  int urun_id = 3416;
  String urun_adi = "Kol saati";
  int urun_adet = 100;
  double urun_fiyat = 149.99;
  String urun_tedarikci = "Rolex";

  print("Ürün id : $urun_id"); //swift /(), java + ,kotlin $
  print("Ürün adı : $urun_adi");
  print("Ürün adet : $urun_adet");
  print("Ürün fiyat : $urun_fiyat \$");
  print("Ürün tedarikçi : $urun_tedarikci");

  int a =10;
  int b=20;

  print("$a x $b =${a*b}");

  //---------Sabitler------
  // final,const
  //Java(final),Swift(let),Kotlin(val)

  int sayi = 60;
  print(sayi);
  sayi=140;
  print(sayi);

  final int numara = 70;
  //final Değişkenlerde ve nesne tabanlı yapılarda kullanılır.
  //Kodlamayı çalıştırdığımızda hafızada oluşur.
  print(numara);
  //numara = 50;
  const double x = 45.7;
  print(x);
  //const genellikle göresel nesnelerde kullanılır.
  //Bu değişkeni tanımlarken hafızada oluşur.

  //--------------- Tür dönüşümü - Type Casting---------------

  //1.Sayısaldan sayısala Dönüşüm
  int i =78;
  double d = 43.85;

  int sonuc1 = d.toInt();
  double sonuc2 = i.toDouble();
  print(sonuc1);
  print(sonuc2);

  //2.Sayısaldan Metine Dönüşüm
  String sonuc3 = i.toString(); //"78"
  String sonuc4 = d.toString(); //"43.85"
  print(sonuc3);
  print(sonuc4);

  //3.Metinden Sayısala Dönüşüm
  String yazi1 = "67";
  String yazi2 = "38.25";

  int sonuc5 = int.parse(yazi1);
  double sonuc6 = double.parse(yazi2);
  print(sonuc5);
  print(sonuc6);
}