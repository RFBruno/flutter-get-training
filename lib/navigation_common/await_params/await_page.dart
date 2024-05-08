import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AwaitPage extends StatelessWidget {
  const AwaitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Params Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop("Dados retornado flutter nativo");
              },
              child: const Text("Retornando com flutter nativo"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back(result: "Retornando com GetX");
              },
              child: const Text("Retornando com GetX"),
            ),
          ],
        ),
      ),
    );
  }
}
