import 'package:bookly_app/Feature/home/presentation/views/widgets/book_rate.dart';
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

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
                  maxLines: 2,
                  'Harry Potter and the Global of Fire',
                  style: Styles.textStyle20.copyWith(
                    fontFamily: kGtfont,
                  ),
                ),
              ),
              const Text(
                'JK . Rowwling',
                style: Styles.textStyle14,
              ),
              Row(
                children: [
                  Text(
                    r'19.99$',
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  const BookRate(),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
