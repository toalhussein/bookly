import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/core/widgets/custom_widget_error.dart';
import 'package:bookly/features/home/presentation/manager/newsed_books_cubit/newsed_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsedBooksCubit, NewsedBooksState>(
      builder: (context, state) {
        if (state is NewsedBooksSucces) {
          return ListView.builder(

            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: BookListViewItem(bookModel: state.books[index]),
              );
            },
          );
        } else if(state is NewsedBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
