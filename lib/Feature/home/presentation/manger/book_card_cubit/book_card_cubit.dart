import 'package:bookly_app/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'book_card_state.dart';

class BookCardCubit extends Cubit<BookCardState> {
  BookCardCubit(this.homeRepo) : super(BookCardInitialState());

  final HomeRepo homeRepo;

  Future<void> getBookCard() async {
    emit(BookCardLoadingState());

    var result = await homeRepo.fetchBookCard();
    result.fold((failure) {
      emit(BookCardFailureState(errorMessage: failure.errorMessage));
    }, (booksCard) {
      emit(BookCardSucessState(booksList: booksCard));
    });
  }
}
