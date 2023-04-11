import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/navegacao_comum_homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NavegacaoComumHomePage(),
      initialRoute: '/home',
      getPages: [
        GetPage(
          name: '/home',
          page: () => Container(),
        ),
        // path param -  obrigatorio
        GetPage(
          name: '/pathParam/:nomeObrigatorio',
          page: () => Container(),
        ),
        //query param - opcional
        GetPage(
          name: '/queryParam',
          page: () => Container(),
        ),
      ],
      unknownRoute: GetPage(
        name: '/404',
        page: () => Container(),
      ),
    );
  }
}
