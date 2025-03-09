import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/model/book_model/book.model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
