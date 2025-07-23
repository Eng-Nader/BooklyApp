import 'package:bloc/bloc.dart';
import 'package:bookly_app/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homeRepo) : super(SimilarBookInitialState());
  final HomeRepo homeRepo;
  Future<void> getSimilarBook({required String categories}) async {
    emit(SimilarBookLoadingState());
    var result = await homeRepo.fetchSimlirBook(categories: categories);

    result.fold((failure) {
      emit(SimilarBookFailureState(failure.errorMessage));
    }, (books) {
      emit(SimilarBookSucessState(books));
    });
  }
}
