import 'package:bookly_app/Feature/home/presentation/views/widgets/app_bar_details.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

class HomeDetailsBody extends StatelessWidget {
  const HomeDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                AppBarDetials(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 100,
                  ),
                ),
                SimilarBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
