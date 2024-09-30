part of 'newsed_books_cubit.dart';

sealed class NewsedBooksState extends Equatable {
  const NewsedBooksState();

  @override
  List<Object> get props => [];
}

final class NewsedBooksInitial extends NewsedBooksState {}
final class NewsedBooksLoading extends NewsedBooksState {}
final class NewsedBooksSucces extends NewsedBooksState {
  final List<BookModel> books;

  const NewsedBooksSucces(this.books);
}
final class NewsedBooksFailure extends NewsedBooksState {
  final String errMessage;

  const NewsedBooksFailure(this.errMessage);
}
