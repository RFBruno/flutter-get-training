import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_training/navigation_common/off/off_page3.dart';

class OffPage2 extends StatelessWidget {
  const OffPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off Page2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const OffPage3(),
                  ),
                );
              },
              child: const Text("Get to Page3 com Flutter Nativo"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.off(const OffPage3());
              },
              child: const Text("Get to Page3 com GetX"),
            ),
          ],
        ),
      ),
    );
  }
}
