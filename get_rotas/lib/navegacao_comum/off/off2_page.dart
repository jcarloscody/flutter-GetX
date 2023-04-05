import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/off/off3_page.dart';

class Off2Page extends StatelessWidget {
  const Off2Page({Key? key}) : super(key: key);

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
                  // remove a pagina 2 e põe a pagina 3
                  //é o mesmo que o pushReplacement
                  Get.off(Off3Page());
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
