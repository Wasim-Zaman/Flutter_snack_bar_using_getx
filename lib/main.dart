import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Snak Bar",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Snake bar'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                      'Alert', "You have forced the snake bar to be shown",
                      snackPosition: SnackPosition.BOTTOM,
                      // duration: const Duration(microseconds: 3000),
                      overlayBlur: 3,
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(5));
                },
                child: const Text('Show Snake Bar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
