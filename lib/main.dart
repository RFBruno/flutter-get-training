import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_training/navigation_named/navigation_named_home_page.dart';
import 'package:get_training/navigation_named/page/inicial_page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: [
        GetPage(
          name: "/",
          page: () => const NavigationNamedHomePage(),
        ),
        GetPage(
          name: "/inicial/page1",
          page: () => const InicialPage1(),
        ),
      ],
      // home: const NavigationCommonHomePage(),
    );
  }
}
