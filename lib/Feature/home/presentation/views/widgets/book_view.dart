import 'package:bookly_app/Feature/home/presentation/manger/book_card_cubit/book_card_cubit.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/book_card.dart';
import 'package:bookly_app/core/utils/custom_error_widger.dart';
import 'package:bookly_app/core/utils/custom_loading_indcator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookCardView extends StatelessWidget {
  const BookCardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookCardCubit, BookCardState>(
      builder: (context, state) {
        if (state is BookCardSucessState) {
          return SizedBox(
            height: 224,
            child: Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.booksList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: BookCard(
                      imageUrl: state
                          .booksList[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is BookCardFailureState) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        } else {
          return const CustomLoadingIndcator();
        }
      },
    );
  }
}
