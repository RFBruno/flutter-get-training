import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_training/navigation_common/to/Page1.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.to(
            const Page1(),
          ),
          child: const Text("Ir page 1"),
        ),
      ),
    );
  }
}
