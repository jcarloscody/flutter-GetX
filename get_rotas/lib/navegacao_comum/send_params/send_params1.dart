import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SendParams1Dart extends StatelessWidget {
  const SendParams1Dart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        child: Text(Get.arguments ?? ""),
      ),
    );
  }
}
