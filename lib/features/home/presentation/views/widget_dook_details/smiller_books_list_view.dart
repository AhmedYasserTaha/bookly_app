import 'package:bookly_app/features/home/presentation/views/widget_home_view/custom_book_item_image.dart';
import 'package:flutter/material.dart';

class SmillerBooksListView extends StatelessWidget {
  const SmillerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .14,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookImage(),
          );
        },
      ),
    );
  }
}
