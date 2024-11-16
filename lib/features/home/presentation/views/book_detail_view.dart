import 'package:bookly/features/home/presentation/manager/similar_books_cubit/simlar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/home_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/book_model/book_model.dart';

class HomeDetailsView extends StatefulWidget {
  const HomeDetailsView({super.key, required this.book});
  final BookModel book;

  @override
  State<HomeDetailsView> createState() => _HomeDetailsViewState();
}

class _HomeDetailsViewState extends State<HomeDetailsView> {

  @override
  void initState() {
    BlocProvider.of<SimlarBooksCubit>(context).fetchSimilarBooks(category: widget.book.volumeInfo.categories![0]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: BookDetailsViewBody(),
    ));
  }
}
