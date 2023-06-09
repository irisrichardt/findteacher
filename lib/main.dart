import 'package:findteacher/app/modules/pesquisa_professor/views/pesquisa_professor_view.dart';
import 'package:findteacher/app/modules/views/inicial_view.dart';
import 'package:findteacher/routes.dart';
import 'package:findteacher/theme/theme_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Find Teacher',
      debugShowCheckedModeBanner: false,
      theme: CustomThemeData.light(),
      // darkTheme: CustomThemeData.dark(),
      // themeMode: ThemeMode.dark,
      routes: {
        Routes.INCIAL: (context) => const InicialView(),
        Routes.PESQUISA_PROFESSOR: (context) => const PesquisaProfessorView(),
      },
    );
  }
}
