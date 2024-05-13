import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_training/navigation_named/navigation_named_home_page.dart';
import 'package:get_training/navigation_named/pages/inicial_page1.dart';
import 'package:get_training/navigation_named/pages/nao_encontrada_page.dart';

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
      initialRoute: "/home",
      unknownRoute: GetPage(
        name: "/404",
        page: () => const NaoEncontradaPage(),
      ),
      getPages: [
        GetPage(
          name: "/home",
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
