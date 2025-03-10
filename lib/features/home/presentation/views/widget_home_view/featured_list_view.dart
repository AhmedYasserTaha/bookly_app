import 'package:bookly_app/core/widget/custom_error_widget.dart';
import 'package:bookly_app/core/widget/custom_loading_indcator.dart';
import 'package:bookly_app/features/home/presentation/view_model/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widget_home_view/custom_book_item_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .27,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomBookImage(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks.thumbnail,
                  ),
                );
              },
            ),
          );
        } else if (state is FeatureBookFailure) {
          return CustomErrorWidget(errorMessage: state.errMessage);
        } else {
          return const CustomLoadingIndcator();
        }
      },
    );
  }
}
