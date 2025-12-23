import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:task1/model/category_model.dart';
import 'package:task1/model/model.dart';

class LipstickService {
  final Dio _dio = Dio(
    // BaseOptions(
    //   baseUrl: 'https://www.sephora.com/api/v2/catalog/',
    //   connectTimeout: const Duration(seconds: 10),
    //   receiveTimeout: const Duration(seconds: 10),
    // ),
  );
  String category = "lipstick";

  Future<List<Lipstick>> fetchLipsticks([String value = 'lipstick']) async {
    category = value;
    try {
      final response = await _dio.get(
        'https://www.sephora.com/api/v2/catalog/search/?type=keyword&q=$value&page=50&currentPage=1&loc=en-US',
      );

      final data = response.data;
      final products = data['products'] as List<dynamic>? ?? [];
      

      return products.map((json) => Lipstick.fromJson(json)).toList();
    } on DioException catch (e) {
      throw Exception('Dio error: ${e.response?.statusCode} - ${e.message}');
    } catch (e) {
      throw Exception('Unexpected error: $e');
    }
  }

  Future<List<Category>> fetchcartegory(String category) async {
    try {
      final response = await _dio.get(
        'https://www.sephora.com/api/v2/catalog/search/?type=keyword&q=$category&page=50&currentPage=1&loc=en-US',
      );

      final data = response.data;

      final products = data['categories'] as List<dynamic>? ?? [];
      log(products.toString());
      return products.map((json) => Category.fromJson(json)).toList();
    } on DioException catch (e) {
      log(e.toString());
      throw Exception('Dio error: ${e.response?.statusCode} - ${e.message}');
    } catch (e) {
      log(e.toString());
      throw Exception('Unexpected error: $e');
    }
  }
}
