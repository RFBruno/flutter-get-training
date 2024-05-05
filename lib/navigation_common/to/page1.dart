import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_training/navigation_common/to/Page2.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.to(const Page2()),
          child: const Text("Ir page 2"),
        ),
      ),
    );
  }
}
