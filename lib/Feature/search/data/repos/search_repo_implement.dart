import 'package:bookly_app/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Feature/search/data/repos/search_repo.dart';
import 'package:bookly_app/core/errors/faliure.dart';
import 'package:bookly_app/core/utils/api_servers.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImplement implements SearchRepo {
  final ApiServers apiServers;

  SearchRepoImplement( this.apiServers);
  @override
  Future<Either<Failure, List<BookModel>>> getSearchBook(
      {required String bookName}) async {
    Map<String, dynamic> data = await apiServers.get(
        endPoint:
            'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&startIndex=0&q=Subject:$bookName');
    List<BookModel> searchBook = [];
    try {
      for (var item in data['items']) {
        searchBook.add(BookModel.fromJson(item));
      }
      return right(searchBook);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.fromDioException(e));
      } else {
        return left(
          ServerFaliure(
            e.toString(),
          ),
        );
      }
    }
  }
}
