import 'package:bloc/bloc.dart';
import 'package:bookly_app/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Feature/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_cubit_state.dart';

class SearchCubit extends Cubit<SearchCubitState> {
  SearchCubit(this.searchRepo) : super(SearchCubitInitialState());
  final SearchRepo searchRepo;
 

  Future<void> searchBook({required String bookName}) async {
    emit(SearchCubitLoadingState());
    var result = await searchRepo.getSearchBook(bookName: bookName);
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
