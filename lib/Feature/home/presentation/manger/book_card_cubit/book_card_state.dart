part of 'book_card_cubit.dart';

sealed class BookCardState extends Equatable {
  const BookCardState();

  @override
  List<Object> get props => [];
}

final class BookCardInitialState extends BookCardState {}

final class BookCardLoadingState extends BookCardState {}

final class BookCardSucessState extends BookCardState {}

final class BookCardFailureState extends BookCardState {
  final String errorMessage;
  const BookCardFailureState({
    required this.errorMessage,
  });
}
