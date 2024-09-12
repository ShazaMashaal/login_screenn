import 'package:dio/dio.dart';

class DioClient {
  final Dio _dio = Dio();

  DioClient() {
    _dio.options.baseUrl = 'https://reqres.in/api/';
    _dio.options.connectTimeout = const Duration(seconds: 5); // 5 seconds
    _dio.options.receiveTimeout = const Duration(seconds: 3); // 3 seconds
    _dio.options.headers = {
      'Content-Type': 'application/json',
    };
  }

  Dio get dio => _dio;
}
