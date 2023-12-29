import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class VeritabaniYardimcisi {

  static final String veritabaniAdi = "sulama.sqlite";

  //veritabanina erişim
  static Future<Database> veritabaniErisim()async{
    //dosya yolunu belirttiyorum
    String veritabaniYolu = join(await getDatabasesPath(),veritabaniAdi);

    if(await databaseExists(veritabaniYolu)){
      print("Veritabani daha önce kopyalanmış.");
    }else{
      //veritabanı kopyalıyorum
      ByteData data = await rootBundle.load("veritabani/$veritabaniAdi");
      List<int> bytes = data.buffer.asUint8List(data.offsetInBytes,data.lengthInBytes);
      await File(veritabaniYolu).writeAsBytes(bytes,flush: true);
      print("Veritabani kopyalandi.");
    }

    return openDatabase(veritabaniYolu);
  }
}