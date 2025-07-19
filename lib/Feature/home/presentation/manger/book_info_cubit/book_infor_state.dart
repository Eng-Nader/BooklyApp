part of 'book_infor_cubit.dart';

sealed class BookInforState extends Equatable {
  const BookInforState();

  @override
  List<Object> get props => [];
}

final class BookInforInitialState extends BookInforState {}

final class BookInfoLoadingState extends BookInforState {}

final class BookInfoSuceessState extends BookInforState {
  final List<BookModel> bookInfo;
  const BookInfoSuceessState({required this.bookInfo});
}

final class BookInfoFailureState extends BookInforState {
  final String errorMessage;
  const BookInfoFailureState({required this.errorMessage});
}
