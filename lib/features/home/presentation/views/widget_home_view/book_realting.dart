import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.center,
      required this.rating,
      required this.count});
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;
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
        Text(
          rating.toString(),
          style: Styles.textStyle18,
        ),
        const SizedBox(width: 6),
        Text(
          "($count)",
          style: Styles.textStyle16.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}
