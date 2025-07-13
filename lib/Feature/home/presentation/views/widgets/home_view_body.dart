import 'package:bookly_app/Feature/home/presentation/views/widgets/book_view.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          BookCardView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          BookInfo(),
        ],
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/Test_Book_Photo.png',
                  ),
                ),
              ),
            ),
          ),
          const Column(
            children: [
              Text(
                'BookTitle',
              ),
              Text(
                'SubTitle',
              ),
              Text(
                'BookAuthor',
              )
            ],
          )
        ],
      ),
    );
  }
}
