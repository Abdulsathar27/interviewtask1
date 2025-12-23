import 'package:flutter/material.dart';
import 'package:task1/core/constants/app_colors.dart';
import 'package:task1/core/constants/app_texts.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(AppTexts.description,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text(
            AppTexts.longWearingDescription,
            style: TextStyle(color: AppColors.textSecondary),
          ),
          SizedBox(height: 8),
          Text(AppTexts.readMore, style: TextStyle(color: AppColors.primary)),
        ],
      ),
    );
  }
}
