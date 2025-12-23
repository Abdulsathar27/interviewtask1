import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:task1/model/category_model.dart';
import 'package:task1/model/model.dart';

class LipstickService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://www.sephora.com/api/v2/catalog/',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  Future<List<Lipstick>> fetchLipsticks([String value = 'lipstick']) async {
    try {
      final response = await _dio.get(
        'search/',
        queryParameters: {
          'type': 'keyword',
          'q': value,
          'page': 50,
          'currentPage': 1,
          'loc': 'en-US',
        },
      );

      final data = response.data;
      final products = data['products'] as List<dynamic>? ?? [];

      return products.map((json) => Lipstick.fromJson(json)).toList();
    } on DioException catch (e) {
      throw Exception(
        'Dio error: ${e.response?.statusCode} - ${e.message}',
      );
    }
  }

  Future<List<Category>> fetchCategory([String category = 'lipstick']) async {
    try {
      final response = await _dio.get(
        'search/',
        queryParameters: {
          'type': 'keyword',
          'q': category,
          'page': 50,
          'currentPage': 1,
          'loc': 'en-US',
        },
      );

      final data = response.data;
      final categories = data['categories'] as List<dynamic>? ?? [];

      log(categories.toString());

      return categories.map((json) => Category.fromJson(json)).toList();
    } on DioException catch (e) {
      log(e.toString());
      throw Exception(
        'Dio error: ${e.response?.statusCode} - ${e.message}',
      );
    }
  }
}
