import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final Color color;
  final String image;

  const CategoryCard({
    super.key,
    required this.title,
    required this.color,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 180, // <- Altura fixa para evitar overflow
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(image, style: const TextStyle(fontSize: 36)),
          const Spacer(),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 8),
          Row(
            children: const [
              CircleAvatar(radius: 10, backgroundImage: NetworkImage("https://i.pravatar.cc/30")),
              SizedBox(width: 3),
              CircleAvatar(radius: 10, backgroundImage: NetworkImage("https://i.pravatar.cc/31")),
              SizedBox(width: 3),
              Text("1.7 m", style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          )
        ],
      ),
    );
  }
}
