import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/features/home/presentation/views/widget_dook_details/button_action.dart';
import 'package:bookly_app/features/home/presentation/views/widget_dook_details/custom_app_bar_book_details.dart';
import 'package:bookly_app/features/home/presentation/views/widget_dook_details/smiller_books_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widget_home_view/book_realting.dart';
import 'package:bookly_app/features/home/presentation/views/widget_home_view/custom_book_item_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            // hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomAppBarBookDetails(),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, bottom: 40),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .50,
                      child: CustomBookImage(),
                    ),
                  ),
                  const Text(
                    "The Jungle Book",
                    style: Styles.textStyle30,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Opacity(
                    opacity: .7,
                    child: Text(
                      "Rudyard Kipling",
                      style: Styles.textStyle18,
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const BookRating(
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  const ButtonAction(),
                  const Expanded(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "You can also like",
                      style: Styles.textStyle16
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SmillerBooksListView(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
