import 'package:flutter/material.dart';

import '../../components/ft_elevated_button.dart';
import '../../components/ft_outlined_button.dart';
import '../../components/ft_text_form_search.dart';
import '../../components/ft_text_title.dart';
import '../controller/inicial_controller.dart';

class InicialView extends StatefulWidget {
  const InicialView({Key? key}) : super(key: key);

  @override
  State<InicialView> createState() => _InicialViewState();
}

class _InicialViewState extends State<InicialView> {
  final _key = GlobalKey<FormState>();
  late final _mediaQuery = MediaQuery.of(context);
  late final controller = InicialController(isValidForm: () =>
    _key.currentState?.validate() ?? false,
    onNavigatorProfessor: (route, search) =>
        Navigator.pushNamed(context, route, arguments: search),
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(),
      body: SingleChildScrollView(
        child: SizedBox(
          height: _mediaQuery.size.height - _mediaQuery.padding.top,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  key: _key,
                  child: Column(
                    children: [
                      const FTTextTitle(
                        text: 'ENCONTRE UM PROFESSOR!',
                        size: FTSizeTitle.large,
                      ),
                      FTTextFormSearch(
                        controller: controller.searchController,
                        validator: controller.validateSarch,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                      ),
                      FTElevatedButton(
                        onPressed: controller.buscarProfessor,
                        child: const Text('Buscar professor'),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60, bottom: 20, top: 20),
                child: Column(
                  children: [
                    FTElevatedButton(
                      onPressed: controller.sejaProfessor,
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColorLight,
                      ),
                      child: const Text('Seja um professor'),
                    ),
                    FTOutlinedButton(
                      onPressed: controller.consultarAula,
                      child: const Text('Consultar minhas aulas'),
                    ),
                  ],
                ),
              ),
              const FTTextTitle(
                text: '15 de Out. dia do professor!',
                size: FTSizeTitle.small,
                color: Colors.black45,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
