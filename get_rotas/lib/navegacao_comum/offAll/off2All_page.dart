import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/off/off3_page.dart';
import 'package:get_rotas/navegacao_comum/offAll/off3All_page.dart';

class Off2AllPage extends StatelessWidget {
  const Off2AllPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2'),
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  // remove toda a stack de navegacao, é o mesmo q pushAndRemoveUntil
                  Get.offAll(Off3AllPage(),
                      predicate:
                          ModalRoute.withName('/NavegacaoComumHomePage'));
                },
                child: Text("off 3")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("pop")),
          ],
        ),
      ),
    );
  }
}
