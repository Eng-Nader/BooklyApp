import 'package:bookly_app/Feature/home/presentation/manger/similar_book_cubit.dart/similar_book_cubit.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/book_card.dart';
import 'package:bookly_app/core/utils/custom_error_widger.dart';
import 'package:bookly_app/core/utils/custom_loading_indcator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookCubit, SimilarBookState>(
      builder: (context, state) {
        if (state is SimilarBookSucessState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .2,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: BookCard(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    ));
              },
            ),
          );
        } else if (state is SimilarBookFailureState) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndcator();
        }
      },
    );
  }
}
