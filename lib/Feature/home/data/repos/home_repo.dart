import 'package:bookly_app/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/errors/faliure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBook();
  Future<Either<Failure, List<BookModel>>> fetchBookCard();
  Future<Either<Failure, List<BookModel>>> fetchSimlirBook(
      {required String categories});
}
