import 'package:arc_sulama/data/repo/vanalar_dao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetaySayfaCubit extends Cubit<void>{
  DetaySayfaCubit():super(0);
  var vrepo = VanalarDaoRepository();
  Future<void>guncelle(int vana_id,String vana_adi,int power_on )async{
    await vrepo.guncelle(vana_id, vana_adi, power_on );
  }
}