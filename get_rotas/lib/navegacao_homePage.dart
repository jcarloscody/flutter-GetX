import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/back/back_home.dart';
import 'package:get_rotas/navegacao_comum/off/off_page.dart';
import 'package:get_rotas/navegacao_comum/to/to_Home.dart';

class NavegacaoComumHomePage extends StatelessWidget {
  const NavegacaoComumHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Nav Comum'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Get.to(const ToHome());
              },
              child: Text("toHome")),
          ElevatedButton(
              onPressed: () {
                Get.to(const BackHome());
              },
              child: Text("back")),
          ElevatedButton(
              onPressed: () {
                Get.to(const OffPage());
              },
              child: Text("Off")),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/');
            },
            child: const Text("Navegcao nomeada"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/paginaQnaoExiste');
            },
            child: const Text("Navegcao nomeada - pagina que não existe"),
          ),
          ElevatedButton(
              onPressed: () {
                Get.toNamed('/rota', arguments: 'argumentos');
                Get.toNamed('/rota', arguments: {});

                /// recepção na outra página
                Get.parameters;
              },
              child: const Text("to named com argumentos")),
          ElevatedButton(
            onPressed: () {
              final uri = Uri.encodeFull('nome qualquer');
              Get.toNamed('/pathParam/$uri');
              //resgatar lá na pagina
              Get.parameters["nomeObrigatorio"];
            },
            child: const Text("Usando path param"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/queryParam?nome=nome qualquer&id=1');
              Get.toNamed('/queryParam', parameters: {});
              //resgatar lá na pagina
              Get.parameters["nome"];
            },
            child: const Text("Query param"),
          ),
          ElevatedButton(
            onPressed: () {
             Get.to
            },
            child: const Text("Middlewares"),
          ),
        ],
      )),
    );
  }
}
