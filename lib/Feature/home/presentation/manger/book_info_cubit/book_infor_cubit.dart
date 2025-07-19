import 'package:bookly_app/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'book_infor_state.dart';

class BookInforCubit extends Cubit<BookInforState> {
  BookInforCubit(this.homeRepo) : super(BookInforInitialState());
  final HomeRepo homeRepo;

  Future<void> getInfoBook() async {
    emit(BookInfoLoadingState());
    var result = await homeRepo.fetchNewestBook();
    result.fold((failure) {
      emit(BookInfoFailureState(errorMessage: failure.errorMessage));
    }, (booksInfo) {
      emit(BookInfoSuceessState(bookInfo: booksInfo));
    });
  }
}
