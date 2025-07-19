import 'package:bookly_app/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/faliure.dart';
import 'package:bookly_app/core/utils/api_servers.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiServers apiServers;

  HomeRepoImplement(this.apiServers);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBook() async {
    try {
      Map<String, dynamic> data = await apiServers.get(
          endPoint:
              '?Sorting=newest&Filtering=free-ebooks&startIndex=0&q=Subject:Flutter');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(
          BookModel.fromJson(item),
        );
      }
      return right(books);
    } on DioException catch (e) {
      return left(
        ServerFaliure.fromDioException(e),
      );
    } catch (e) {
      return left(
        ServerFaliure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchBookCard() async {
    try {
      Map<String, dynamic> data = await apiServers.get(
          endPoint: '?Filtering=free-ebooks&startIndex=0&q=Subject:Flutter');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(
          BookModel.fromJson(item),
        );
      }
      return right(books);
    } on DioException catch (e) {
      return left(
        ServerFaliure.fromDioException(e),
      );
    } catch (e) {
      return left(
        ServerFaliure(
          e.toString(),
        ),
      );
    }
  }
}
