import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AwaitParamsPageDart1 extends StatelessWidget {
  const AwaitParamsPageDart1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        child: ElevatedButton(
            onPressed: () async {
              Get.back(result: "enviando params");
            },
            child: Text("Getx")),
      ),
    );
  }
}
