import 'package:bookly_app/Feature/home/presentation/views/widgets/app_bar_details.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/book_card.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/book_rate.dart';
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeDetailsBody extends StatelessWidget {
  const HomeDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const AppBarDetials(),
          const SizedBox(
            height: 30,
          ),
          const BookCard(),
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
          const BookRate(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 30,
          ),
          const PriceBreview(),
          const SizedBox(
            height: 100,
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'You More Like Book ',
                  style: Styles.textStyle18,
                ),
                SizedBox(
                  height: 10,
                ),
                BookDetailsView(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PriceBreview extends StatelessWidget {
  const PriceBreview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [],
    );
  }
}

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/Test_Book_Photo.png',
                  ),
                ),
              ),
            );
          }),
    );
  }
}
