import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ogrenciler/data/repo/ogrenciler_dao_repository.dart';

class KayitSayfaCubit extends Cubit<void>{
  KayitSayfaCubit():super(0);
  var orepo = OgrencilerDaoRepository();

  Future<void> kaydet ( String ogrenci_ad) async {
    await orepo.kaydet( ogrenci_ad);
  }
}