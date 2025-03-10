part of 'news_books_cubit.dart';

sealed class NewsBooksState extends Equatable {
  const NewsBooksState();

  @override
  List<Object> get props => [];
}

final class NewsBooksInitial extends NewsBooksState {}

final class NewsBooksloading extends NewsBooksState {}

final class NewsBooksfailure extends NewsBooksState {
  final String errMessage;

  const NewsBooksfailure({required this.errMessage});
}

final class NewsBooksSuccess extends NewsBooksState {
  final List<BookModel> books;

  const NewsBooksSuccess({required this.books});
}
