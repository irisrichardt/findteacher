import 'package:flutter/material.dart';

import '../../components/ft_elevated_button.dart';
import '../../components/ft_outlined_button.dart';
import '../../components/ft_text_form_search.dart';
import '../../components/ft_text_title.dart';

class InicialView extends StatelessWidget {
  const InicialView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);

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
                  child: Column(
                    children: [
                      const FTTextTitle(
                        text: 'ENCONTRE UM PROFESSOR!',
                        size: FTSizeTitle.large,
                      ),
                      FTTextFormSearch(
                        controller: TextEditingController(),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                      ),
                      FTElevatedButton(
                        child: const Text('Buscar professor'),
                        onPressed: () {},
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
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColorLight,
                      ),
                      child: const Text('Seja um professor'),
                    ),
                    FTOutlinedButton(
                      child: const Text('Consultar minhas aulas'),
                      onPressed: () {},
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
