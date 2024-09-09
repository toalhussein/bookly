import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/splash/presentation/view/splash_view.dart';

void main() {
  runApp(const BoolkyApp());
}

class BoolkyApp extends StatelessWidget {
  const BoolkyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp( 
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
      ),
      
      home: const SplashView(),
    );
  }
}
