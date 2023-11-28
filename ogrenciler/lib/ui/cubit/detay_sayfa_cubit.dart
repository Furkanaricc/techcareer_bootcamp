import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/ogrenciler_dao_repository.dart';

class DetaySayfaCubit extends Cubit<void> {
  DetaySayfaCubit():super(0);
  var orepo =OgrencilerDaoRepository();
  Future<void>guncelle(int ogrenci_no,String ogrenci_ad )async{
    await orepo.guncelle(ogrenci_no,ogrenci_ad);
  }
}