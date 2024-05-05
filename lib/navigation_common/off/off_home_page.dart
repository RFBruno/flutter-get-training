import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_training/navigation_common/off/off_page1.dart';

class OffHomePage extends StatelessWidget {
  const OffHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const OffPage1(),
                  ),
                );
              },
              child: const Text("Get to Page1 com Flutter Nativo"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const OffPage1());
              },
              child: const Text("Get to Page1 com GetX"),
            ),
          ],
        ),
      ),
    );
  }
}
