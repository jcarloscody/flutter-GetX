import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          ElevatedButton(onPressed: () {}, child: Text("to")),
          ElevatedButton(onPressed: () {}, child: Text("to")),
          ElevatedButton(onPressed: () {}, child: Text("to")),
          ElevatedButton(onPressed: () {}, child: Text("to")),
          ElevatedButton(onPressed: () {}, child: Text("to")),
        ],
      )),
    );
  }
}
