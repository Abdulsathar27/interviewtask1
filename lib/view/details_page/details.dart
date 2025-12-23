import 'package:flutter/material.dart';
import 'package:task1/core/constants/app_colors.dart';
import 'package:task1/model/model.dart';
import 'package:task1/view/details_page/widgets/addtocartbar.dart';
import 'package:task1/view/details_page/widgets/descriptionsection.dart';
import 'package:task1/view/details_page/widgets/productinfo.dart';
import 'widgets/details_app_bar.dart';
import 'widgets/product_image.dart';
import 'widgets/real_results_section.dart';
import 'widgets/reviews_section.dart';

class DetailsPage extends StatelessWidget {
  final Lipstick lipstick;
  const DetailsPage({super.key, required this.lipstick});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductImage(imageUrl: lipstick.heroImage),
                ProductInfo(lipstick: lipstick),
                const Divider(),
                const DescriptionSection(),
                const Divider(),
                const RealResultsSection(),
                const Divider(),
                const ReviewsSection(),
                const SizedBox(height: 100),
              ],
            ),
          ),
          const AddToCartBar(),
          const DetailsAppBar(),
        ],
      ),
    );
  }
}
