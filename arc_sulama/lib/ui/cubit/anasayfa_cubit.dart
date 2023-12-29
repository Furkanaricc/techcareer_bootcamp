import 'package:arc_sulama/data/entitiy/vanalar.dart';
import 'package:arc_sulama/data/repo/vanalar_dao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit extends Cubit<List<Vanalar>>{
  AnasayfaCubit(): super(<Vanalar>[]);

  var vrepo = VanalarDaoRepository();

  Future<void> vanalariYukle()async{
    var liste = await vrepo.vanalariYukle();
    emit(liste);
  }

}