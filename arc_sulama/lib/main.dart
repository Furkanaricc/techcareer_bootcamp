import 'package:arc_sulama/ui/cubit/anasayfa_cubit.dart';
import 'package:arc_sulama/ui/cubit/detay_sayfa_cubit.dart';
import 'package:arc_sulama/ui/cubit/vana_ekle_cubit.dart';
import 'package:arc_sulama/ui/views/anasayfa.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
        BlocProvider(create: (context)=>AnasayfaCubit()),
        BlocProvider(create: (context)=>VanaEkleSayfaCubit()),
        BlocProvider(create: (context)=>DetaySayfaCubit()),
    ],
    child:MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: const Anasayfa(),
    ),
    );
  }
}

