import 'package:flutter/material.dart';
import 'package:task1/core/constants/app_colors.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      left: 16,
      right: 16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _icon(Icons.arrow_back, () => Navigator.pop(context)),
          Row(
            children: [
              _icon(Icons.share, () {}),
              const SizedBox(width: 10),
              _icon(Icons.shopping_bag_outlined, () {}),
            ],
          ),
        ],
      ),
    );
  }

  Widget _icon(IconData icon, VoidCallback onTap) {
    return CircleAvatar(
      backgroundColor: AppColors.background,
      child: IconButton(
        icon: Icon(icon, color: AppColors.textPrimary),
        onPressed: onTap,
      ),
    );
  }
}
