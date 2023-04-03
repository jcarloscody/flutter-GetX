import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get_starting/pages/p1.dart';
import 'package:get_starting/pages/p2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("app"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Get.to(const Page1());
            },
            child: const Text("p1"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(const Page2());
            },
            child: const Text("p2"),
          )
        ],
      )),
    );
  }
}
