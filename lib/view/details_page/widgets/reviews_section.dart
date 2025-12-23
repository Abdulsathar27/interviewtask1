import 'package:flutter/material.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Reviews",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          const Text(
            "4.8",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const Text("Based on 1,204 reviews"),
          const SizedBox(height: 12),
          ...List.generate(
            5,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  Text("${5 - index}"),
                  const SizedBox(width: 8),
                  Expanded(
                    child: LinearProgressIndicator(
                      value: (5 - index) / 5,
                      color: Colors.pink,
                      backgroundColor: Colors.grey[300],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          OutlinedButton(
            onPressed: () {},
            child: const Text("Write a Review"),
          )
        ],
      ),
    );
  }
}
