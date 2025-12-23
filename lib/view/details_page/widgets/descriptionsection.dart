import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Description",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text(
            "A long-wearing, high-pigment liquid lipstick with a smooth, matte finish and all-day lightweight comfort. Infused with Vitamin E and Avocado Oil to keep lips soft and hydrated.",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 8),
          Text("Read More", style: TextStyle(color: Colors.pink)),
        ],
      ),
    );
  }
}
