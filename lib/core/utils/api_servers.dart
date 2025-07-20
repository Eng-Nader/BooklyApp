import 'package:dio/dio.dart';

class ApiServers {
  final Dio _dio;

  ApiServers(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Response response = await _dio.get(endPoint);

    return response.data;
  }
}
