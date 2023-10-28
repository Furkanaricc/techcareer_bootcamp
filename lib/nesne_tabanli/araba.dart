class Araba{
   String renk ;
  int hiz ;
  bool calisiyorMu ;

  /* Araba(Stringrenk , int hiz , bool calisiyorMu){
    this.renk; //shadowing
    this.hiz;
    this.calisiyorMu;
    //Bu kullanımda late kullanman gerekiyor.
  } */

  Araba( {required this.renk,required this.hiz,required this.calisiyorMu});
  //this = Araba Sınıfı

  void calistir(){ //Side effect
    hiz = 5;
    calisiyorMu = true;
  }
  void durdur(){
    hiz = 0;
    calisiyorMu = false;
  }

  void hizlan(int km){
    hiz += km; //hiz = hiz + km;
}
  void yavasla(int km){
    hiz-= km ; //hiz= hiz-km;
  }

  void bilgiAl(){
    print("-------------------------------");
    print("Renk         : ${renk}");
    print("Hız          : ${hiz}");
    print("Calışıyor mu : ${calisiyorMu}");
  }


}