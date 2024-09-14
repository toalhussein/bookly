import 'package:flutter/material.dart';

import 'custom_app_bar_book_details.dart';

class HomeDetailsViewBody extends StatelessWidget {
  const HomeDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            CustomAppBarBookDetails(),
          ],
        ),
      ),
    );
  }
}


