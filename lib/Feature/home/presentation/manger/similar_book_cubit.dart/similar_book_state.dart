part of 'similar_book_cubit.dart';

sealed class SimilarBookState extends Equatable {
  const SimilarBookState();

  @override
  List<Object> get props => [];
}

final class SimilarBookInitialState extends SimilarBookState {}

final class SimilarBookLoadingState extends SimilarBookState {}

final class SimilarBookSucessState extends SimilarBookState {
  final  List <BookModel> books;
  const SimilarBookSucessState(this.books);
}

final class SimilarBookFailureState extends SimilarBookState {
  final String errorMessage;
  const SimilarBookFailureState(this.errorMessage);
}
