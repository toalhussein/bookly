import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
import 'book_rating.dart';
import 'box_action.dart';
import 'custom_listview_item.dart';

class BookDetailSectoin extends StatelessWidget {
  const BookDetailSectoin({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(imageUrl: 'https://cdn.kobo.com/book-images/eac349ef-86d3-4ae3-a2c8-1d02dd23693a/353/569/90/False/c-programming-language-classmate-in-a-book-2021-release.jpg',),
        ),
        const SizedBox(height: 43),
        const Text(
          'The Jungle Book',
          style: Style.textStyle30,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Style.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 17),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center, rating: 5, count: 250,
        ),
        const SizedBox(
          height: 42,
        ),
        const BooksAction(),
      ],
    );
  }
}
