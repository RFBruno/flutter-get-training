import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_training/navigation_common/offAll/offAll_page2.dart';

class OffAllPage1 extends StatelessWidget {
  const OffAllPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OffAll Page1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const OffAllPage2(),
                  ),
                );
              },
              child: const Text("Get to OffAll Page2 com Flutter Nativo"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const OffAllPage2());
              },
              child: const Text("Get to OffAll Page2 com GetX"),
            ),
          ],
        ),
      ),
    );
  }
}
