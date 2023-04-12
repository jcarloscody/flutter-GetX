import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/nested_navegation/p1.dart';
import 'package:get_rotas/nested_navegation/p2.dart';

class NestedPageHome extends StatelessWidget {
  final currentBottomIndex = 0.obs;
  NestedPageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: currentBottomIndex.value,
          onTap: (value) {
            currentBottomIndex(value);
            switch (value) {
              case 0:
                Get.offNamed('/p1', id: 1);
                break;
              case 1:
                Get.offNamed('/p2', id: 1);

                break;
            }
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.apple)),
            BottomNavigationBarItem(icon: Icon(Icons.apple)),
          ],
        ),
      ),
      body: Navigator(
        key: Get.nestedKey(key),
        initialRoute: '/',
        onGenerateRoute: (settings) {
          Widget page;
          Transition transition = Transition.cupertino;

          if (settings.name == '/p1') {
            page = P1();
          } else if (settings.name == '/p2') {
            page = P2();
          } else {
            page = Text('data');
          }
          return GetPageRoute(page: () => page, transition: transition);
        },
      ),
    );
  }
}
