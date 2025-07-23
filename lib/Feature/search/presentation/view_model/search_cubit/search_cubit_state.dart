part of 'search_cubit.dart';

sealed class SearchCubitState extends Equatable {
  const SearchCubitState();

  @override
  List<Object> get props => [];
}

final class SearchCubitInitialState extends SearchCubitState {}

final class SearchCubitSucessState extends SearchCubitState {
  final List<BookModel> books;
  const SearchCubitSucessState({required this.books});
}

final class SearchCubitFailureState extends SearchCubitState {
  final String errorMessage;
  const SearchCubitFailureState(this.errorMessage);
}

final class SearchCubitLoadingState extends SearchCubitState {}
