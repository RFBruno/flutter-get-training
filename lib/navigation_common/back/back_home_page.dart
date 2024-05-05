import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_training/navigation_common/back/back_page1.dart';

class BackHomePage extends StatelessWidget {
  const BackHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back  Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const BackPage1(),
                  ),
                );
              },
              child: const Text("Back to Page com Flutter Nativo"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const BackPage1());
              },
              child: const Text("Back to Page com GetX"),
            ),
          ],
        ),
      ),
    );
  }
}
