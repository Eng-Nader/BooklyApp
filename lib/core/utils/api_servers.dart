import 'package:dio/dio.dart';

class ApiServers {
  final Dio dio;
  final String _baseUrl = 'www.googleapis.com/books/v1/volumes';
  ApiServers(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Response response = await dio.get('$_baseUrl$endPoint');

    return response.data;
  }
}
