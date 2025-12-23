import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/controllers/product_controllers.dart';

class CategoryChips extends StatelessWidget {
  const CategoryChips({super.key});

  @override
  Widget build(BuildContext context) {
 

    return SizedBox(
      height: 42,
      child: Consumer<ProductController>(
        builder: (context, value, child) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: value.categories.length,
            itemBuilder: (context, index) {
              log(  value.categories.length.toString());
              final category = value.categories[index];
              return ChoiceChip(
                label: Text('${category.displayName} .(${category.recordCount})'),
                selected: false,
                onSelected: (selected) {
                },
              );
            },
          );
        },
        
      ),
    );
  }
}
