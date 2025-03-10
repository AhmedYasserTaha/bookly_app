// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/model/book_model/book.model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'news_books_state.dart';

class NewsBooksCubit extends Cubit<NewsBooksState> {
  NewsBooksCubit(this.homeRepo) : super(NewsBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewsBooks() async {
    emit(NewsBooksloading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(NewsBooksfailure(errMessage: failure.errMessage));
      },
      (books) {
        emit(NewsBooksSuccess(books: books));
      },
    );
  }
}
