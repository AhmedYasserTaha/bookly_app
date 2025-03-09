import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.center});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(width: 5),
        const Text(
          "4.8",
          style: Styles.textStyle18,
        ),
        const SizedBox(width: 6),
        Text(
          "(2390)",
          style: Styles.textStyle16.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}
