import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/await_params/await_params_page1.dart';

class AwaitParamsPageDart extends StatelessWidget {
  const AwaitParamsPageDart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        child: ElevatedButton(
            onPressed: () async {
              print(await Get.to(const AwaitParamsPageDart1()));
            },
            child: Text("Getx")),
      ),
    );
  }
}
