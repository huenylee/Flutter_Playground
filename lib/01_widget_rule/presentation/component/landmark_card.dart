import 'package:flutter/material.dart';
import 'package:learn_flutter_together/01_widget_rule/data/model/landmark.dart';

class LandmarkCard extends StatelessWidget {
  final Landmark landmark;
  final bool isFavorite;
  final void Function(Landmark landmark) onFavoriteTap;

  const LandmarkCard({
    super.key,
    required this.landmark,
    required this.onFavoriteTap,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: Image.network(
            landmark.imageUrl,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    landmark.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    landmark.subTitle,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => onFavoriteTap(landmark),
                child: Row(
                  children: [
                    Icon(
                      isFavorite ? Icons.star : Icons.star_border,
                      color: Colors.red,
                    ),
                    Text(landmark.favoriteCount.toString()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
