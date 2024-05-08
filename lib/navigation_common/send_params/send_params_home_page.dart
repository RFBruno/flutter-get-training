import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_training/navigation_common/send_params/params_page.dart';

class SendParamsHomePage extends StatelessWidget {
  const SendParamsHomePage({Key? key}) : super(key: key);

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
                    builder: (context) => const ParamsPage(),
                    settings: const RouteSettings(
                        arguments: "Paramentros enviado com Flutter nativo"),
                  ),
                );
              },
              child: const Text("Get to Page1 com params Flutter Nativo"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const ParamsPage(), arguments: "Enviado com GetX");
              },
              child: const Text("Get to Page1 com params GetX"),
            ),
          ],
        ),
      ),
    );
  }
}
