import 'package:arc_sulama/data/repo/vanalar_dao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class VanaEkleSayfaCubit extends Cubit<void>{
  VanaEkleSayfaCubit():super(0);
  var vrepo = VanalarDaoRepository();

  Future<void> vanaEkle (String vana_adi,int power_on) async{
    await vrepo.ekle(vana_adi, power_on);
  }

}