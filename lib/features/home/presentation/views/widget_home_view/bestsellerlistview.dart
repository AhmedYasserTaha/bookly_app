import 'package:bookly_app/core/widget/custom_error_widget.dart';
import 'package:bookly_app/core/widget/custom_loading_indcator.dart';
import 'package:bookly_app/features/home/presentation/view_model/news_books_cubit/news_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widget_home_view/bestsellerlistviewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<NewsBooksCubit, NewsBooksState>(
        builder: (context, state) {
          if (state is NewsBooksSuccess) {
            return ListView.builder(
              // shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BookListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              },
            );
          } else if (state is NewsBooksfailure) {
            return CustomErrorWidget(errorMessage: state.errMessage);
          } else {
            return const CustomLoadingIndcator();
          }
        },
      ),
    );
  }
}
