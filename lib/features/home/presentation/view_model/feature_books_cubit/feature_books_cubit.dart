// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/model/book_model/book.model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBookInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeatureBooks() async {
    emit(FeatureBookLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(
          FeatureBookFailure(errMessage: failure.errMessage),
        );
      },
      (books) {
        emit(FeatureBookSuccess(books: books));
      },
    );
  }
}
