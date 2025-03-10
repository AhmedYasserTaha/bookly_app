import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/model/book_model/book.model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'news_books_state.dart';

class NewsBooksCubit extends Cubit<NewsBooksState> {
  NewsBooksCubit() : super(NewsBooksInitial());
}
