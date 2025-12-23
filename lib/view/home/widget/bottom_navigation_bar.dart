import 'package:flutter/material.dart';
import 'package:task1/core/constants/app_colors.dart';
import 'package:task1/core/constants/app_texts.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.textSecondary,
      currentIndex: 1,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: AppTexts.home),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: AppTexts.search),
        BottomNavigationBarItem(icon: Icon(Icons.star), label: AppTexts.brands),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: AppTexts.favorites),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: AppTexts.profile),
      ],
    );
  }
}
