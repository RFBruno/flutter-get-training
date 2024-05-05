import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_training/navigation_common/offAll/offAll_page3.dart';

class OffAllPage2 extends StatelessWidget {
  const OffAllPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OffAll Page2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const OffAllPage3(),
                  ),
                  ModalRoute.withName("/"),
                );
              },
              child: const Text(
                  "Get to OffAll Page3 excluido toda a arvore de navegacao com Flutter Nativo"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const OffAllPage3(),
                  ),
                  ModalRoute.withName("namePage1"),
                );
              },
              child: const Text(
                  "Get to OffAll Page3 excluido parte da arvore de navegacao com Flutter Nativo"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAll(
                  const OffAllPage3(),
                  predicate: ModalRoute.withName("/OffAllHomePage"),
                );
              },
              child: const Text("Get to OffAll Page3 com GetX"),
            ),
          ],
        ),
      ),
    );
  }
}
