import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_training/navigation_common/to/Page1.dart';

class ToHomePage extends StatelessWidget {
  const ToHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To  Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Page1(),
                  ),
                );
              },
              child: const Text("Get to Page com Flutter Nativo"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const Page1());
              },
              child: const Text("Get to Page com GetX"),
            ),
          ],
        ),
      ),
    );
  }
}
