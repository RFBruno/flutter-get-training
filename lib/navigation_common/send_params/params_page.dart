import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ParamsPage extends StatelessWidget {
  const ParamsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final paramsNativo =
        ModalRoute.of(context)?.settings.arguments ?? "Paramentros não enviado";

    final paramsGetx = Get.arguments ?? "Not send";

    return Scaffold(
      appBar: AppBar(
        title: const Text('Params Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nativo: $paramsNativo"),
            const SizedBox(
              height: 20,
            ),
            Text("GetX: $paramsGetx"),
          ],
        ),
      ),
    );
  }
}
