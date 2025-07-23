import 'package:bookly_app/Feature/home/presentation/manger/book_card_cubit/book_card_cubit.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/custom_book_image.dart';
import 'package:bookly_app/core/utils/custom_error_widger.dart';
import 'package:bookly_app/core/utils/custom_loading_indcator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.booksList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRouter.khomeDetails,
                        extra: state.booksList[index],
                      );
                    },
                    child: CustomBookImage(
                      imageUrl: state
                          .booksList[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is BookCardFailureState) {
          return Center(
            child: CustomErrorWidget(
              errorMessage: state.errorMessage,
            ),
          );
        } else {
          return const CustomLoadingIndcator();
        }
      },
    );
  }
}
