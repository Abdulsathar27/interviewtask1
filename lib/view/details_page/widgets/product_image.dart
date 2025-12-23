import 'package:flutter/material.dart';
import 'package:task1/core/constants/app_colors.dart';

class ProductImage extends StatelessWidget {
  final String imageUrl;
  const ProductImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          imageUrl,
          height: 380,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            4,
            (index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: index == 0 ? 20 : 8,
              height: 8,
              decoration: BoxDecoration(
                color: index == 0 ? AppColors.primary : AppColors.background,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
