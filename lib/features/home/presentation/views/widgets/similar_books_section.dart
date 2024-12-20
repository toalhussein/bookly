import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
import 'similar_books_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: SizedBox(
              height: 50,
            ),
          ),
          Text(
            'You can also like',
            style: Style.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const SimilarBooksListView(),
        ],
      ),
    );
  }
}
