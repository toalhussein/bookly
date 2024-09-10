import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';
import 'custom_appbar.dart';
import 'fearured_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatuerdBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text('Best Seller', style: Style.textStyle18),
          SizedBox(height: 23),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}


