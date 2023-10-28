void main(){
  int yas = 17 ;
  String isim = "Ahmet";


  if(yas >= 18 ){
    print("Reşitsiniz.");
  }else{
    print("Reşit değilsiniz.");
  }

  if(isim == "Ahmet "){
    print("Merhaba Ahmet");
  }else if (isim=="Mehmet "){
    print("Merhaba Mehmet");
  }else {
    print("tanınmayan kişi");
  }

  String ka = "admin";
  int s = 123456;

  if(ka=="admin" && s==123456){
    print("Hoşgeldiniz.");
  }else{
    print("Hatalı Giriş");
  }

  int sayi = 10;

  if(sayi==9 || sayi==10){
    print("Sayı 9 veya 10 dur.");
  }else{
    print("sayı 9 veya 10 değildir.");
  }

  //Kotlin(When)
  //----------------switch--------------------------------

  int gun = 5;

  switch(gun){
    case 1 : print("Pazartesi");
    break;
    case 2: print("Salı");
    break;
    case 3 : print("Çarşamba");
    break;
    case 4: print("Perşembe");
    break;
    case 5 : print("Cuma");
    break;
    case 6: print("Cumartesi");
    break;
    case 7 : print("Pazar");
    break;
    default: print ("Böyle bir gün yok");
    break;

  }
}