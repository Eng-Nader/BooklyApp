import 'package:bookly_app/Feature/home/presentation/views/widgets/book_card.dart';
import 'package:flutter/material.dart';

class BookCardView extends StatelessWidget {
  const BookCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 224,
      child: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 2),
              child: BookCard(),
            );
          },
        ),
      ),
    );
  }
}
