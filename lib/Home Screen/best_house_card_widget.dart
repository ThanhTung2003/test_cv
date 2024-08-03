import 'package:flutter/material.dart';

class BestHouseCard extends StatelessWidget {
  final String name;
  final String price;
  final String bedroom;
  final String bathroom;
  final String imagePath;

  const BestHouseCard({
    super.key,
    required this.name,
    required this.price,
    required this.bedroom,
    required this.bathroom,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Image.asset(imagePath, width: 100, height: 100, fit: BoxFit.cover),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(price, style: const TextStyle(color: Colors.grey)),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(Icons.bed, color: Colors.grey),
                  const SizedBox(width: 4),
                  Text(bedroom, style: const TextStyle(color: Colors.grey)),
                  const SizedBox(width: 16),
                  const Icon(Icons.bathtub, color: Colors.grey),
                  const SizedBox(width: 4),
                  Text(bathroom, style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}