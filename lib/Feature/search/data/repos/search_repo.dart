import 'package:bookly_app/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/errors/faliure.dart';
import 'package:dartz/dartz.dart';

abstract class SearchHomeRepo {
  Future<Either<Failure, List<BookModel>>> getSearchBook(
      {required String bookName});
}
