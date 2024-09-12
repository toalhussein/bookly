import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  
  runApp(const BoolkyApp());
}

class BoolkyApp extends StatelessWidget {
  const BoolkyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router( 
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
      ),
      
    );
  }
}

