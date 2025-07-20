import 'package:bookly_app/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRate extends StatelessWidget {
  const BookRate(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.book});
  final BookModel book;

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Image.asset(
          height: 20,
          AssetsData.kStar,
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          '4.8',
          style: Styles.textStyle18,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(${book.volumeInfo.pageCount})',
          style: Styles.textStyle14,
        )
      ],
    );
  }
}
