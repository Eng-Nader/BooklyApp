import 'package:bookly_app/Feature/home/presentation/views/widgets/book_info.dart';
import 'package:bookly_app/Feature/search/presentation/view_model/search_cubit/search_cubit.dart';
import 'package:bookly_app/core/utils/custom_error_widger.dart';
import 'package:bookly_app/core/utils/custom_search_indecator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultView extends StatelessWidget {
  const SearchResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchCubitState>(
      builder: (context, state) {
        if (state is SearchCubitSucessState) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: BookInfo(bookModel: state.books[index]));
            },
          );
        } else if (state is SearchCubitFailureState) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomSearchIndecator();
        }
      },
    );
  }
}
