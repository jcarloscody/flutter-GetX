import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_homePage.dart';

class ToHome extends StatelessWidget {
  const ToHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(const NavegacaoComumHomePage());
                },
                child: Text("Getx")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const NavegacaoComumHomePage();
                    },
                  ));
                },
                child: Text("Flutter")),
          ],
        ),
      ),
    );
  }
}
