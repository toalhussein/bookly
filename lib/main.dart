import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash/presentation/view/splash_view.dart';

void main() {
  runApp(const BoolkyApp());
}

class BoolkyApp extends StatelessWidget {
  const BoolkyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SplashView(),
    );
  }
}
