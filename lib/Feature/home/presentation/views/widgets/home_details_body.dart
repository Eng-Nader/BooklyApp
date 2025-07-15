import 'package:bookly_app/Feature/home/presentation/views/widgets/app_bar_details.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/book_card.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/book_rate.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeDetailsBody extends StatelessWidget {
  const HomeDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          AppBarDetials(),
          SizedBox(
            height: 30,
          ),
          BookCard(),
          Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Ryad Clibic',
            style: Styles.textStyle16,
          ),
          BookRate(),
          SizedBox(
            height: 30,
          ),
          PriceBreview(),
          SizedBox(
            height: 20,
          ),
          BookDetailsView(),
        ],
      ),
    );
  }
}

class PriceBreview extends StatelessWidget {
  const PriceBreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 40,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              r'19.99$',
              style: Styles.textStyle18.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          height: 40,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              'Free preview',
              style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
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
