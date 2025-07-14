import 'package:bookly_app/Feature/home/presentation/views/widgets/book_info.dart';
import 'package:flutter/material.dart';

class BookInfoView extends StatelessWidget {
  const BookInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const BookInfo();
      },
    );
  }
}
