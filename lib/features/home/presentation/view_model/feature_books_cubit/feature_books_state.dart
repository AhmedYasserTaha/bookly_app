part of 'feature_books_cubit.dart';

sealed class FeatureBooksState extends Equatable {
  const FeatureBooksState();

  @override
  List<Object> get props => [];
}

final class FeatureBookInitial extends FeatureBooksState {}

final class FeatureBookLoading extends FeatureBooksState {}

final class FeatureBookFailure extends FeatureBooksState {
  final String errMessage;

  const FeatureBookFailure({required this.errMessage});
}

final class FeatureBookSuccess extends FeatureBooksState {
  final List<BookModel> books;

  const FeatureBookSuccess({required this.books});
}
