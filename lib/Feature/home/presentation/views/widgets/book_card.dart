import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
            ),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
