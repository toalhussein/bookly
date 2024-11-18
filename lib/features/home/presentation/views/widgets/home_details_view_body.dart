import 'package:flutter/material.dart';

import '../../../data/model/book_model/book_model.dart';
import 'books_details_section.dart';
import 'custom_app_bar_book_details.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomAppBarBookDetails(),
                BookDetailSectoin(bookModel: bookModel,),
                SimilarBooksSection(bookModel:bookModel ),
                const SizedBox(height: 40)
              ],
            ),
          ),
        )
      ],
    );
  }
}
