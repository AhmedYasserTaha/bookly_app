import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/features/home/presentation/views/widget_dook_details/smiller_books_list_view.dart';
import 'package:flutter/material.dart';

class SimllerBooksSection extends StatelessWidget {
  const SimllerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "You can also like",
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 17,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
