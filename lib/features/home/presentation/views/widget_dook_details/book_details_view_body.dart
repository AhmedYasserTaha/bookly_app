import 'package:bookly_app/features/home/data/model/book_model/book.model.dart';
import 'package:bookly_app/features/home/presentation/views/widget_dook_details/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widget_dook_details/custom_app_bar_book_details.dart';
import 'package:bookly_app/features/home/presentation/views/widget_dook_details/simller_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              children: [
                const CustomAppBarBookDetails(),
                BookDetilsSection(book: bookModel),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const SimllerBooksSection()
              ],
            ),
          )
        ],
      ),
    );
  }
}
