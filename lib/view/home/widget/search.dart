import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/controllers/product_controllers.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onChanged: (value) {
                context.read<ProductController>().fetchProducts(
                      value.isEmpty ? 'lipstick' : value,
                    );
              },
              decoration: InputDecoration(
                hintText: 'Lipstick',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Stack(
            children: const [
              Icon(Icons.shopping_cart_outlined),
              Positioned(
                right: 0,
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.pink,
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
