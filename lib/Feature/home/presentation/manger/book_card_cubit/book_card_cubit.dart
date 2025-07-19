import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'book_card_state.dart';

class BookCardCubit extends Cubit<BookCardState> {
  BookCardCubit() : super(BookCardInitial());
}
