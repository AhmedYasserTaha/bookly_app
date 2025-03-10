// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/model/book_model/book.model.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit() : super(FeatureBookInitial());
}
