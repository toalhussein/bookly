import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'simlar_books_state.dart';

class SimlarBooksCubit extends Cubit<SimlarBooksState> {

  final HomeRepo homeRepo;
  SimlarBooksCubit(this.homeRepo) : super(SimlarBooksInitial());

    Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimlarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(catogery: category);
    result.fold(
      (failure) => emit(SimlarBooksFailure(failure.errMessage)),
      (books) => emit(SimlarBooksSucces(books)),
    );
  }
}
