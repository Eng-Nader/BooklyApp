import 'package:bookly_app/Feature/home/presentation/views/home_details.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/home_details_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: GestureDetector(
          onTap: () {
            Get.to(
              const HomeDetails(),
              transition: Transition.rightToLeft,
            );
          },
          child: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/Test_Book_Photo.png'),
              ),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
    );
  }
}
