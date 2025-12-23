import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/controllers/product_controllers.dart';
import 'package:task1/core/constants/app_colors.dart';

class CategoryChips extends StatelessWidget {
  const CategoryChips({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: Consumer<ProductController>(
        builder: (context, controller, _) {
          return ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemCount: controller.categories.length,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final category = controller.categories[index];
              final isSelected = controller.selectedCategoryIndex == index;

              return GestureDetector(
                onTap: () {
                  controller.selectCategory(index, category.displayName);
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: isSelected ? AppColors.primary : AppColors.surface,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: isSelected
                          ? AppColors.primary
                          : AppColors.border,
                    ),
                    boxShadow: isSelected
                        ? [
                            BoxShadow(
                              color: AppColors.primary.withOpacity(0.25),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ]
                        : [],
                  ),
                  child: Text(
                    '${category.displayName} (${category.recordCount})',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: isSelected ? AppColors.buttonText : AppColors.textPrimary,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
