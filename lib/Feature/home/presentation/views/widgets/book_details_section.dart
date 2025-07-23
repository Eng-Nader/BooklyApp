import 'package:bookly_app/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/book_card.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/book_rate.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/price_priview.dart';
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: BookCard(
            imageUrl: bookModel.volumeInfo.imageLinks.thumbnail , 
          ),
        ),
        Text(
          bookModel.volumeInfo.title ?? '',
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          bookModel.volumeInfo.authors?.isNotEmpty == true
              ? bookModel.volumeInfo.authors![0]
              : 'UnKnown Author',
          style: Styles.textStyle18.copyWith(
            fontFamily: kGtfont,
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        BookRate(
          book: bookModel,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 30,
        ),
        const PriceBreview(),
      ],
    );
  }
}
