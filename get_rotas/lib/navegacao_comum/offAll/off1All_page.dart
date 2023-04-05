import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/off/off2_page.dart';
import 'package:get_rotas/navegacao_comum/offAll/off2All_page.dart';

class Off1AllPage extends StatelessWidget {
  const Off1AllPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('1'),
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(Off2AllPage());
                },
                child: Text("to 2")),
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
