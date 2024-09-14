import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  final baseUrl = "https://fakestoreapi.com/products";

  ApiService(this._dio);

  Future<dynamic> getRequest() async {
    var response = await _dio.get(baseUrl);
    return response.data;
  }
}