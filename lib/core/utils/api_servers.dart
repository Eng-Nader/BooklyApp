import 'package:dio/dio.dart';

class ApiServers {
  final Dio _dio;
  final String _baseUrl = 'www.googleapis.com/books/v1/volumes';
  ApiServers(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Response response = await _dio.get('$_baseUrl$endPoint');

    return response.data;
  }
}
