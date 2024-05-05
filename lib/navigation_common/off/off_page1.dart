import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_training/navigation_common/off/off_page2.dart';

class OffPage1 extends StatelessWidget {
  const OffPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off Page1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const OffPage2(),
                  ),
                );
              },
              child: const Text("Get to Page2 com Flutter Nativo"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.off(const OffPage2());
              },
              child: const Text("Get to Page2 com GetX"),
            ),
          ],
        ),
      ),
    );
  }
}
