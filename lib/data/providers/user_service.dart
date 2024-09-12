import 'package:dio/dio.dart';

class UserService {
  final Dio _dio;

  UserService(this._dio);

  Future<Response> login(String email, String password) async {
    try {
      final response = await _dio.post('login', data: {
        'email': email,
        'password': password,
      });
      return response;
    } catch (e) {
      rethrow;
    }
  }

}
