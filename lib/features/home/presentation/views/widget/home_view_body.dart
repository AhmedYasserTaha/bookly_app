import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widget/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          const SizedBox(height: 50),
          Text(
            'Best Seller',
            style: Styles.tilteMedium,
          )
        ],
      ),
    );
  }
}
