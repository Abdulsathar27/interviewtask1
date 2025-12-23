import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/controllers/product_controllers.dart';
import 'package:task1/core/constants/app_colors.dart';
import 'package:task1/core/constants/app_texts.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onChanged: (value) {
                context.read<ProductController>().fetchProducts(
                      value.isEmpty ? AppTexts.lipstick : value,
                    );
              },
              decoration: InputDecoration(
                hintText: AppTexts.searchHint,
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: AppColors.surface,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Stack(
            children: const [
              Icon(Icons.shopping_cart_outlined),
              Positioned(
                right: 0,
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: AppColors.primary,
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 10, color: AppColors.buttonText),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
