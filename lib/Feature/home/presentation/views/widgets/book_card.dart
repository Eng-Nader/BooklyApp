import 'package:bookly_app/core/utils/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return 
       CustomBookImage(imageUrl: imageUrl); 
    
  }
}
