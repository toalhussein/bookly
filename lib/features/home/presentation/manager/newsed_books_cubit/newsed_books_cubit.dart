import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/model/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'newsed_books_state.dart';

class NewsedBooksCubit extends Cubit<NewsedBooksState> {
  NewsedBooksCubit(this.homeRepo) : super(NewsedBooksInitial());
   final HomeRepo homeRepo;

  Future<void> fetchNewsedBooks() async {
    emit(NewsedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(NewsedBooksFailure(failure.errMessage)),
      (books) => emit(NewsedBooksSucces(books)),
    );
  }
}
