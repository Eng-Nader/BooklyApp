import 'package:bookly_app/Feature/home/presentation/views/widgets/book_info_view.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/book_view.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                BookCardView(),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: BookInfoView(),
          )
        ],
      ),
    );
  }
}
