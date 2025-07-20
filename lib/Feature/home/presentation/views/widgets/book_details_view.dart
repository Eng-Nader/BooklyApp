import 'package:bookly_app/Feature/home/presentation/views/widgets/book_card.dart';
import 'package:flutter/cupertino.dart';

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
          return const BookCard(
            imageUrl:
                'https://i.pinimg.com/736x/68/e1/59/68e15971da05ec82c116fe191abb8c7f.jpg',
          );
        },
      ),
    );
  }
}
