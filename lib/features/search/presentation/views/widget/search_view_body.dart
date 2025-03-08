import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/features/search/presentation/views/widget/custom_search_text_feild.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: const [CustomSearchTextFeild()],
      ),
    );
  }
}
