import 'package:bookly_app/Feature/search/presentation/view/widget/search_result_view.dart';
import 'package:bookly_app/Feature/search/presentation/view/widget/search_text_fild.dart';
import 'package:bookly_app/Feature/search/presentation/view_model/search_cubit/search_cubit.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchTextFild(
                  onSubmitted: (data) {
                    BlocProvider.of<SearchCubit>(context)
                        .searchBook(bookName: data);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Search Result',
                  style: Styles.textStyle18,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          const SliverFillRemaining(child: SearchResultView())
        ],
      ),
    );
  }
}


