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
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookImage(
              imageUrl:
                  "https://www.google.com/url?sa=i&url=https%3A%2F%2Fstock.adobe.com%2Fsearch%3Fk%3Dfx%2Blogo&psig=AOvVaw0SLwlKpzYvYGAEZ0Q_cO00&ust=1741698158247000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCLDkmbHJ_4sDFQAAAAAdAAAAABAE",
            ),
          );
        },
      ),
    );
  }
}
