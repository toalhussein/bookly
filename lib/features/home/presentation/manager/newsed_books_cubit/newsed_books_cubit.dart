import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/model/book_model/book_model.dart';

part 'newsed_books_state.dart';

class NewsedBooksCubit extends Cubit<NewsedBooksState> {
  NewsedBooksCubit() : super(NewsedBooksInitial());
}
