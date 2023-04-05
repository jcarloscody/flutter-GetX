import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/send_params/send_params1.dart';

class SendParamDart extends StatelessWidget {
  const SendParamDart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Send Params'),
      ),
      body: Container(
        child: ElevatedButton(
            onPressed: () {
              Get.to(const SendParams1Dart(), arguments: 'Paramento');
            },
            child: Text("Getx")),
      ),
    );
  }
}
