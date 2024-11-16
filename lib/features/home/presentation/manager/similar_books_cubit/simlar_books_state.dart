part of 'simlar_books_cubit.dart';

sealed class SimlarBooksState extends Equatable {
  const SimlarBooksState();

  @override
  List<Object> get props => [];
}

final class SimlarBooksInitial extends SimlarBooksState {}

final class SimlarBooksLoading extends SimlarBooksState {}

final class SimlarBooksFailure extends SimlarBooksState {
  const SimlarBooksFailure(this.errMessage);
  final String errMessage;
}

final class SimlarBooksSucces extends SimlarBooksState {
  const SimlarBooksSucces(this.books);
  final List<BookModel> books;

}
