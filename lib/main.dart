import 'package:findteacher/app/components/ft_outlined_button.dart';
import 'package:findteacher/app/components/ft_text_form_field.dart';
import 'package:findteacher/theme/theme_data.dart';
import 'package:flutter/material.dart';

import 'app/components/ft_elevated_button.dart';
import 'app/components/ft_text_title.dart';

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
      darkTheme: CustomThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const MyHomePage(title: 'Find Teacher Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FTTextTitle(text: 'Find Teacher', size: FTSizeTitle.normal),
            FTTextFormField(label: 'Buscar professor'),
            FTElevatedButton(
              child: Text('Buscar'),
              onPressed: () {},
            ),
            FTOutlinedButton(
              child: Text('Seja um professor'),
              onPressed: () {}
            ),
            FTElevatedButton(
              child: Text('Consultar aulas'),
              onPressed: () {},
            ),
            const Text(
              '15 de out. dia do professor!'
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
