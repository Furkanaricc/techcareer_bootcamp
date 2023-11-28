import 'package:ogrenciler/data/entitiy/ogrenciler.dart';
import 'package:ogrenciler/data/repo/ogrenciler_dao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit extends Cubit<List<Ogrenciler>>{

  AnasayfaCubit():super(<Ogrenciler>[]);
  var orepo = OgrencilerDaoRepository();

  Future<void>ogrencileriYukle()async{

    var liste = await orepo.ogrencilerYukle();
    emit(liste);

  }
  Future<void>ara(String aramaKelimesi)async{
    var liste = await orepo.ara(aramaKelimesi);
    emit(liste);
  }
  Future<void> sil(int ogrenci_no) async{
    await orepo.sil(ogrenci_no);
    ogrencileriYukle();
  }


}
