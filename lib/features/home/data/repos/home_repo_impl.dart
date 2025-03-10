import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/model/book_model/book.model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subjectProgramming&Sorting=newest');

      // التحقق من `null` + التأكد إن `items` موجودة وقابلة للـ iteration
      if (data == null || data['items'] == null || data['items'] is! List) {
        return left(ServerFailure("No books found"));
      }

      List<BookModel> books = (data['items'] as List)
          .map((item) => BookModel.fromJson(item))
          .toList();

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subjectProgramming&Sorting=newest');

      // التحقق من `null` + التأكد إن `items` موجودة وقابلة للـ iteration
      if (data == null || data['items'] == null || data['items'] is! List) {
        return left(ServerFailure("No books found"));
      }

      List<BookModel> books = (data['items'] as List)
          .map((item) => BookModel.fromJson(item))
          .toList();

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
