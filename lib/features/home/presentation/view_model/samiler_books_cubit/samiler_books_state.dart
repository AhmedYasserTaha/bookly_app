part of 'samiler_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> books;

  const SimilarBooksSuccess({required this.books});
}

final class SimilarBooksFailuer extends SimilarBooksState {
  final String errMessage;

  const SimilarBooksFailuer({required this.errMessage});
}

final class SimilarBooksLoading extends SimilarBooksState {}
