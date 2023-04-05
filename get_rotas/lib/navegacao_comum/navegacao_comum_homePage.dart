import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/back/back_home.dart';
import 'package:get_rotas/navegacao_comum/off/off_page.dart';
import 'package:get_rotas/navegacao_comum/to/to_Home.dart';

class NavegacaoComumHomePage extends StatelessWidget {
  const NavegacaoComumHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Nav Comum'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Get.to(const ToHome());
              },
              child: Text("toHome")),
          ElevatedButton(
              onPressed: () {
                Get.to(const BackHome());
              },
              child: Text("back")),
          ElevatedButton(
              onPressed: () {
                Get.to(const OffPage());
              },
              child: Text("Off")),
          ElevatedButton(onPressed: () {}, child: Text("to")),
          ElevatedButton(onPressed: () {}, child: Text("to")),
          ElevatedButton(onPressed: () {}, child: Text("to")),
        ],
      )),
    );
  }
}
