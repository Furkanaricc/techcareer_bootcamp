class Odev2 {
  //Parametre olarak girilen kenar sayısına göre her bir iç açıyı hesaplayıp sonucu geri döndüren metod yazınız.
  // iç açıları toplamı = ((Kenar sayısı-2)*180)/Kenar sayısı

  void hesaplaIcAci(int kenarSayisi) {
    if (kenarSayisi < 3) {
      print('Kenar sayısı en az 3 olmalıdır.');
      return print("kenar sayısı 3den küçük olamaz");
    } else {
      double icAciToplami = ((kenarSayisi - 2) * 180) / kenarSayisi;
      return print("İç açı toplamı : $icAciToplami");
    }
  }

  //Parametre olarak girilen gün sayısına göre maaş hesaplayan ve elde edilen değeri döndüren metod yazınız.
  // 1günde 8 saat çalışabilir
  // Calışma saati 40, Mesai ücreti 80 , 150 saat sonrası mesai

  void hesaplaMaas(int gun){
    int calisilanSaat = gun*8;
    int calismaSaatUcreti = 40;
    int mesaiUcreti = 80;



    if(calisilanSaat <= 150){
      int maas = calismaSaatUcreti*calisilanSaat ;
      return print("Personel Maaşı : $maas");
    }else{
      int mesaiSaati= (calisilanSaat-150);
      int maas =(mesaiSaati*mesaiUcreti)+(150*calismaSaatUcreti);
      return print("Personel Maaşı : $maas");
    }
  }

  //Paraametre olarak girilen otopark süresine göre otopark ücreti hesaplayarak geri döndüren metodu yaz
  // 1 saat 50 tl bir saatten sonra 10tl

  void otoParkHesapla(int saat ){
    int ucret = (saat*10)+50;
    if(saat==1){
      return print("Otopark ücretiniz 50 tl");
    }else{
      return print("Otopark ücretiniz : $ucret tl");
    }
  }

  //Parametre olarak girilen kilometreyi mile çeviren metod ----- Mile = km*0.621
  double mileSonuc (double km){
    double mileSonuc = km*0.621;
    return mileSonuc;
  }

  //Kenarları parametre olarak girilen dikdörtgenin alanını hesapla
  int alan (int kenar1, int kenar2 ){
    int alan = kenar1 * kenar2 ;
    return alan ;
  }

  //faktoriyel hesabı
  int faktoriyel(int sayi ){
    int sonuc = 1;
    for(int i =1 ; i <=sayi ;i++){
      sonuc *=i;
    }
    return sonuc;
  }

  //parametre içinde kaç e harfi var gösteren metod
  void harfSay(String kelime){
    int sayac = 0;
    for(int i=0;i<kelime.length;i++){
      if(kelime[i]=='e' || kelime[i]== 'E'){
        sayac++;
      }
      return print("Kelime içindeki e sayısı : $sayac");
    }
  }
}