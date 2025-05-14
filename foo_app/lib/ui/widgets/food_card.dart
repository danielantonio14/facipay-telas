import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final double rating;
  final String time;
  final String weight;
  final String quantity;
  final String avatarUrl;
  final String avatarName;
  final List<String> likedAvatars;
  final String likesCount;

  const FoodCard({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.rating,
    required this.time,
    required this.weight,
    required this.quantity,
    required this.avatarUrl,
    required this.avatarName,
    required this.likedAvatars,
    required this.likesCount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Avatar and name above the card
        Padding(
          padding: const EdgeInsets.only(bottom: 8, left: 8),
          child: Row(
            children: [
              CircleAvatar(
                radius: 12,
                backgroundImage: NetworkImage(avatarUrl),
              ),
              const SizedBox(width: 6),
              Text(
                avatarName,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        // Image card with overlays
        Container(
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                // Image covering the entire card
                Image.network(
                  imageUrl,
                  height: 220,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                // Time in top-left corner
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      time,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                // Weight and quantity in bottom-right corner
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Text(
                          weight,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          quantity,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Below the card: Name and liked avatars
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Food name in bottom-left
              Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              // Liked avatars and count in bottom-right
              Row(
                children: [
                  ...likedAvatars.take(2).map(
                        (url) => Padding(
                          padding: const EdgeInsets.only(left: 3),
                          child: CircleAvatar(
                            radius: 10,
                            backgroundImage: NetworkImage(url),
                          ),
                        ),
                      ),
                  const SizedBox(width: 6),
                  Text(
                    likesCount,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}