import 'package:bloc/bloc.dart';
import 'package:bookly_app/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Feature/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_cubit_state.dart';

class SearchCubit extends Cubit<SearchCubitState> {
  SearchCubit(this.searchHomeRepo) : super(SearchCubitInitialState());
  final SearchHomeRepo searchHomeRepo;

  Future<void> searchBook({required String bookname}) async {
    emit(SearchCubitLoadingState());
    var result = await searchHomeRepo.getSearchBook(bookName: bookname);
    result.fold(
      (failure) {
        emit(SearchCubitFailureState(failure.errorMessage));
      },
      (book) {
        emit(
          SearchCubitSucessState(books: book),
        );
      },
    );
  }
}
