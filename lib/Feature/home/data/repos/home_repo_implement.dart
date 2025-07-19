import 'package:bookly_app/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/faliure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplement implements HomeRepo {
  @override
  Future<Either<Faliure, List<BookModel>>> fetchBestSellerBook() {
    // TODO: implement fetchBestSellerBook
    throw UnimplementedError();
  }

  @override
  Future<Either<Faliure, List<BookModel>>> fetchBookCard() {
    // TODO: implement fetchBookCard
    throw UnimplementedError();
  }
}
