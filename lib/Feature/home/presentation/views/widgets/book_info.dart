import 'package:bookly_app/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/book_rate.dart';
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/custom_book_image.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.khomeDetails,
          extra: bookModel,
        );
      },
      child: SizedBox(
        height: 150,
        width: MediaQuery.of(context).size.width * .4,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    bookModel.volumeInfo.title!,
                    style: Styles.textStyle20.copyWith(
                      fontFamily: kGtfont,
                    ),
                  ),
                ),
                Text(
                  maxLines: 3,
                  bookModel.volumeInfo.authors?.isNotEmpty == true
                      ? bookModel.volumeInfo.authors![0]
                      : 'UnKnown Author',
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle14,
                ),
                Row(
                  children: [
                    Text(
                      'Free',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    BookRate(
                      book: bookModel,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
