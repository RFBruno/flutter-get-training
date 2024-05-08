import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_training/navigation_common/await_params/await_page.dart';

class AwaitParamsHomePage extends StatelessWidget {
  const AwaitParamsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Await Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AwaitPage(),
                  ),
                );
                developer.log(
                  'Log Flutter Nativo >>>>>>>>>>>>>> $result',
                );
              },
              child: const Text("Aguarda dados de retorno Flutter Nativo"),
            ),
            ElevatedButton(
              onPressed: () async {
                final result = await Get.to(const AwaitPage());
                developer.log(
                  'Log GetX >>>>>>>>>>>>>> $result',
                );
              },
              child: const Text("Aguarda dados de retorno GetX"),
            ),
          ],
        ),
      ),
    );
  }
}
