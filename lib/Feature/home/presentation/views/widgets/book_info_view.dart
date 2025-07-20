import 'package:bookly_app/Feature/home/presentation/manger/book_info_cubit/book_info_cubit.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/book_info.dart';
import 'package:bookly_app/core/utils/custom_error_widger.dart';
import 'package:bookly_app/core/utils/custom_loading_indcator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookInfoView extends StatelessWidget {
  const BookInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookInforCubit, BookInforState>(
      builder: (context, state) {
        if (state is BookInfoSuceessState) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.bookInfo.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: BookInfo(
                  bookModel: state.bookInfo[index],
                ),
              );
            },
          );
        } else if (state is BookInfoFailureState) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndcator();
        }
      },
    );
  }
}
