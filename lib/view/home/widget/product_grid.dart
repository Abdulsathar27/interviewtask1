import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/controllers/product_controllers.dart';
import 'package:task1/core/constants/app_colors.dart';
import 'package:task1/core/constants/app_texts.dart';
import 'package:task1/view/home/widget/product_card.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductController>(
      builder: (context, controller, _) {
        if (controller.isLoading) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(40),
              child: Center(child: CircularProgressIndicator(color: AppColors.primary)),

            ),
          );
        }else if (controller.products.isEmpty) {
          return const Padding(
            padding: EdgeInsets.all(40),
            child: Text(AppTexts.noProductsFound, textAlign: TextAlign.center,),
          );
        }

        return Padding(
          padding: const EdgeInsets.all(16),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: controller.products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 0.50,
            ),
            itemBuilder: (_, index) {
              final lipstick = controller.products[index];
              return ProductCard(lipstick: lipstick);
            },
          ),
        );
      },
    );
  }
}
