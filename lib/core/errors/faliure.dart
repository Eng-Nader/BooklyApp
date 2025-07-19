import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  Failure(this.errorMessage);
}

class ServerFaliure extends Failure {
  ServerFaliure(super.errorMessage);

  factory ServerFaliure.fromDioException(DioException dioEx) {
    switch (dioEx.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFaliure('Connection TimeOut with Api Request');

      case DioExceptionType.sendTimeout:
        return ServerFaliure('Send TimeOut with Api Request');
      case DioExceptionType.receiveTimeout:
        return ServerFaliure('Receive TimeOut with Api Request');

      case DioExceptionType.badCertificate:
        return ServerFaliure(' BadCertificate with Api Request');
      case DioExceptionType.badResponse:
        return ServerFaliure.fromResposne(
            dioEx.response!.statusCode!, dioEx.response!.data);
      case DioExceptionType.cancel:
        return ServerFaliure(' Canceld with Api Request');
      case DioExceptionType.connectionError:
        return ServerFaliure('Connection Error with Api Request');

      case DioExceptionType.unknown:
        if (dioEx.message!.contains('SocketException')) {
          return ServerFaliure('No Internet Connetction');
        }
        return ServerFaliure('UnExpected Faliure , Try Again');
    }
  }

  factory ServerFaliure.fromResposne(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFaliure(response['error']['message']);
    } else if (statusCode == 500) {
      return ServerFaliure('Internal Server error , please try Again later');
    } else if (statusCode == 404) {
      return ServerFaliure('Your Request not Found , please try Again Later');
    } else {
      return ServerFaliure('There was an error , try Again later ');
    }
  }
}
