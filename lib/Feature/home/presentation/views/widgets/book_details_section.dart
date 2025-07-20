import 'package:bookly_app/Feature/home/presentation/views/widgets/book_card.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/book_rate.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/price_priview.dart';
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: const BookCard(
            imageUrl:
                'https://i.pinimg.com/736x/68/e1/59/68e15971da05ec82c116fe191abb8c7f.jpg',
          ),
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          'Ryad Clibic',
          style: Styles.textStyle18.copyWith(
            fontFamily: kGtfont,
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        // const BookRate(
        //   mainAxisAlignment: MainAxisAlignment.center,
        // ),
        const SizedBox(
          height: 30,
        ),
        const PriceBreview(),
      ],
    );
  }
}
