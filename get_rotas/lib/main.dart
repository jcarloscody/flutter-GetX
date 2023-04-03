import 'package:flutter/material.dart';
import 'package:get_rotas/navegacao_comum/navegacao_comum_homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NavegacaoComumHomePage(),
    );
  }
}
