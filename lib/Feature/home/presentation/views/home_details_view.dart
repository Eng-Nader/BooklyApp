import 'package:bookly_app/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/presentation/manger/similar_book_cubit.dart/similar_book_cubit.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/home_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeDetailsView extends StatefulWidget {
  const HomeDetailsView({super.key, required this.book});
  final BookModel book;

  @override
  State<HomeDetailsView> createState() => _HomeDetailsViewState();
}

class _HomeDetailsViewState extends State<HomeDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBookCubit>(context).getSimilarBook(
      categories: widget.book.volumeInfo.categories![0],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: HomeDetailsBody(
          bookModel: widget.book,
        ),
      ),
    );
  }
}
