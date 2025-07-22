import 'package:bookly_app/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/app_bar_details.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

class HomeDetailsBody extends StatelessWidget {
  const HomeDetailsBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const AppBarDetials(),
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 70,
                  ),
                ),
                const SizedBox(
                  height: 200,
                  child: SimilarBooksSection(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
