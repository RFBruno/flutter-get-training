import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'offAll_page1.dart';

class OffAllHomePage extends StatelessWidget {
  const OffAllHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OffAll Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const OffAllPage1(),
                    settings: const RouteSettings(name: "namePage1"),
                  ),
                );
              },
              child: const Text("Get to OffAll Page1 com Flutter Nativo"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const OffAllPage1());
              },
              child: const Text("Get to OffAll Page1 com GetX"),
            ),
          ],
        ),
      ),
    );
  }
}
