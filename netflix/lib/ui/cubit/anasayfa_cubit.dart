import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/data/repo/netflix_dao_repository.dart';



class AnasayfaCubit extends Cubit<Map<String,List<dynamic>>>{
  AnasayfaCubit() : super({'diziler': [], 'filmler': [], 'populer': []});

  var nrepo = NetflixDaoRepository();

  Future<void> verileriYukle() async {
    //var dizilerListesi = await nrepo.dizilerYukle();
   // var filmlerListesi = await nrepo.filmlerYukle();
   // var populerListesi = await nrepo.populerYukle();

    emit({
    //'diziler': dizilerListesi,
      //'filmler': filmlerListesi,
      //'populer': populerListesi,
    });
  }

}

