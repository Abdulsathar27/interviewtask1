import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:task1/model/category_model.dart';
import 'package:task1/model/model.dart';
import 'package:task1/service/product_service.dart';

class ProductController extends ChangeNotifier {
  final LipstickService _service = LipstickService();

  bool isLoading = false;
  List<Lipstick> products = [];
  List<Category> categories = [];

  Future<void> fetchProducts([String query = 'lipstick']) async {
    try {
      isLoading = true;
      notifyListeners();
      log('Fetching products with query: $query');
      products = await _service.fetchLipsticks(query);
      notifyListeners();
      categories = await _service.fetchCategory(query);
      notifyListeners();
    } catch (e) {
      products = [];
    }
    finally {
      isLoading = false;
      notifyListeners();
    }
  }

  int selectedCategoryIndex = 0;

  void selectCategory(int index, String keyword) {
    selectedCategoryIndex = index;
    fetchProducts(keyword); 
    notifyListeners();
  }
}
