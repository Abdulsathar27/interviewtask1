import 'package:flutter/material.dart';
import 'package:task1/core/constants/app_colors.dart';
import 'package:task1/core/constants/app_texts.dart';

class AddToCartBar extends StatelessWidget {
  const AddToCartBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.all(16),
        color: AppColors.background,
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                onPressed: () {},
                child: const Text(
                  AppTexts.addToCart,
                  style: TextStyle(fontSize: 16,color: AppColors.buttonText),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
