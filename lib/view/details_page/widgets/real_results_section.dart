import 'package:flutter/material.dart';
import 'package:task1/core/constants/app_colors.dart';

class RealResultsSection extends StatelessWidget {
  const RealResultsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Real Results",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text("See All", style: TextStyle(color: AppColors.primary)),
            ],
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 90,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (_, index) => ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  width: 90,
                  color: AppColors.background,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
