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
      log('Fetching products with query: $query');
      products = await _service.fetchLipsticks(query);
          notifyListeners();
          categories = await _service.fetchcartegory(query);
          notifyListeners();
    } catch (e) {
      products = [];

    }
   
  }


  
  

}
