import 'package:flutter/material.dart';

class HouseCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String address;
  final String distance;
  final VoidCallback onTap;

  const HouseCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.address,
    required this.distance,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200,
        height: 500,
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imagePath, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(address, style: const TextStyle(color: Colors.grey)),
                  const SizedBox(height: 4),
                  Text(distance, style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
