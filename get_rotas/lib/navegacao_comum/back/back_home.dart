import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../navegacao_homePage.dart';

class BackHome extends StatelessWidget {
  const BackHome({Key? key}) : super(key: key);

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
                  Get.back();
                },
                child: Text("Getx")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Flutter")),
          ],
        ),
      ),
    );
  }
}
