import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/controllers/product_controllers.dart';
import 'package:task1/view/home/widget/Search.dart';
import 'package:task1/view/home/widget/bottom_navigation_bar.dart';
import 'package:task1/view/home/widget/category_chips.dart';
import 'package:task1/view/home/widget/offerbanner.dart';
import 'package:task1/view/home/widget/product_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ProductController>(context, listen: false).fetchProducts('lipstick');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: const [
            SearchHeader(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    OfferBanner(),
                    SizedBox(height: 16),
                    CategoryChips(),
                    SizedBox(height: 16),
                    ProductGrid(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
