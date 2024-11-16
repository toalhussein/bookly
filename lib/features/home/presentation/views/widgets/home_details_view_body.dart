import 'package:flutter/material.dart';

import 'books_details_section.dart';
import 'custom_app_bar_book_details.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomAppBarBookDetails(),
                BookDetailSectoin(),
                SimilarBooksSection(),
                SizedBox(height: 40)
              ],
            ),
          ),
        )
      ],
    );
  }
}
