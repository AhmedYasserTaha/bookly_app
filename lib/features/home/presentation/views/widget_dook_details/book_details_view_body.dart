import 'package:bookly_app/features/home/presentation/views/widget_dook_details/custom_app_bar_book_details.dart';
import 'package:bookly_app/features/home/presentation/views/widget_home_view/custom_book_item_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const CustomAppBarBookDetails(),
            SizedBox(
                width: MediaQuery.of(context).size.width * .55,
                child: CustomBookImage()),
          ],
        ),
      ),
    );
  }
}
