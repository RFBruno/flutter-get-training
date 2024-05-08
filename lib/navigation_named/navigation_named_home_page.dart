import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_training/navigation_common/await_params/await_params_home_page.dart';
import 'package:get_training/navigation_common/back/back_home_page.dart';
import 'package:get_training/navigation_common/off/off_home_page.dart';
import 'package:get_training/navigation_common/offAll/offAll_home_page.dart';
import 'package:get_training/navigation_common/send_params/send_params_home_page.dart';
import 'package:get_training/navigation_common/to/to_home_page.dart';

class NavigationNamedHomePage extends StatelessWidget {
  const NavigationNamedHomePage({Key? key}) : super(key: key);

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
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const SendParamsHomePage());
              },
              child: const Text("Enviando params"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const AwaitParamsHomePage());
              },
              child: const Text("Await result"),
            ),
          ],
        ),
      ),
    );
  }
}
