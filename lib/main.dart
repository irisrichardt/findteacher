import 'package:findteacher/app/components/ft_text_form_field.dart';
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
            //  const Text(
            //   'Encontrar um professor',
            // ),
            // ElevatedButton(onPressed: () {}, child: Text('Buscar')),
            // OutlinedButton(onPressed: () {}, child: Text('Seja um professor')),
            // ElevatedButton(onPressed: () {}, child: Text('Consultar aulas')),
            // const Text(
            //   '15 de out. dia do professor!'
            // ),

            OutlinedButton(onPressed: () {}, child: Text('Botão')),
            ElevatedButton(onPressed: () {}, child: Text('Botão 2')),
            FTTextFormField(suffix: Icon(Icons.search), label: 'Encontre um professor',),
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
