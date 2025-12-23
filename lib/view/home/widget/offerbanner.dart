import 'package:flutter/material.dart';
import 'package:task1/core/constants/app_colors.dart';
import 'package:task1/core/constants/app_texts.dart';

class OfferBanner extends StatelessWidget {
  const OfferBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [AppColors.customColor2, AppColors.customColor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      AppTexts.limitedTime,
                      style: TextStyle(color: AppColors.buttonText),
                    ),
                    SizedBox(height: 6),
                    Text(
                      AppTexts.offerText,
                      style: TextStyle(
                        color: AppColors.buttonText,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
