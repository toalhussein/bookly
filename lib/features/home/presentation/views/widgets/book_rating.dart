
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/style.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6),
          child: Text(
            '4.8',
            style: Style.textStyle16,
          ),
        ),
        Opacity(
          opacity: .7,
          child: Text(
            '(2390)',
            style: Style.textStyle16,
          ),
        ),
      ],
    );
  }
}
