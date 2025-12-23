import 'package:flutter/material.dart';
import 'package:task1/core/constants/app_colors.dart';
import 'package:task1/view/details_page/details.dart';

class ProductCard extends StatelessWidget {
  final dynamic lipstick;
  const ProductCard({super.key, required this.lipstick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailsPage(lipstick: lipstick),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  lipstick.heroImage,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const Positioned(
                top: 10,
                right: 10,
                child: CircleAvatar(
                  backgroundColor: AppColors.surface,
                  child: Icon(Icons.favorite, color: AppColors.primary),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            lipstick.brandName.toUpperCase(),
            style: const TextStyle(
              fontSize: 12,
              color: AppColors.textSecondary,
              letterSpacing: 1,
            ),
          ),
          Text(
            lipstick.displayName,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 4),
          Text(
            lipstick.salePrice,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
