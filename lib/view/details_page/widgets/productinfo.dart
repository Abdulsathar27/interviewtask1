import 'package:flutter/material.dart';
import 'package:task1/core/constants/app_colors.dart';
import 'package:task1/model/model.dart';

class ProductInfo extends StatelessWidget {
  final Lipstick lipstick;
  const ProductInfo({super.key, required this.lipstick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            lipstick.brandName.toUpperCase(),
            style: const TextStyle(
              fontSize: 12,
              letterSpacing: 1,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            lipstick.displayName,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: const [
              Icon(Icons.star, color: AppColors.primary, size: 18),
              Icon(Icons.star, color: AppColors.primary, size: 18),
              Icon(Icons.star, color: AppColors.primary, size: 18),
              Icon(Icons.star, color: AppColors.primary, size: 18),
              Icon(Icons.star_half, color: AppColors.primary, size: 18),
              SizedBox(width: 6),
              Text("4.8 (1,204 Reviews)", style: TextStyle(color: AppColors.textSecondary)),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            "\$32.00",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          const Text(
            "Free shipping on orders over \$50",
            style: TextStyle(color: AppColors.textSecondary),
          ),
        ],
      ),
    );
  }
}
