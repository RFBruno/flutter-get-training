import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_training/navigation_common/back/back_home_page.dart';
import 'package:get_training/navigation_common/off/off_home_page.dart';
import 'package:get_training/navigation_common/offAll/offAll_home_page.dart';
import 'package:get_training/navigation_common/to/to_home_page.dart';

class NavigationCommonHomePage extends StatelessWidget {
  const NavigationCommonHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Navegação comum'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(const ToHomePage());
              },
              child: const Text("TO (Push)"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const BackHomePage());
              },
              child: const Text("Back (Pop)"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const OffHomePage());
              },
              child: const Text("Off (Replacement)"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const OffAllHomePage());
              },
              child: const Text("OffAll (PushAndRemoveUntil)"),
            ),
          ],
        ),
      ),
    );
  }
}
