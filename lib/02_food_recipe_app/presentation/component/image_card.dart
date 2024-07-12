import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_flutter_together/02_food_recipe_app/domain/model/recipe.dart';
import 'package:learn_flutter_together/02_food_recipe_app/ui/colors.dart';
import 'package:learn_flutter_together/02_food_recipe_app/ui/fonts.dart';

final class ImageCard extends StatelessWidget {
  final Recipe recipe;

  const ImageCard({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              recipe.imagePath,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.7),
                  ],
                  stops: [0.6, 1.0],
                )),
          ),
          Positioned(
              right: 10,
              top: 10,
              child: Container(
                width: 37,
                height: 16,
                decoration: BoxDecoration(
                    color: CustomColors.secondary20,
                    borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(20),
                      right: Radius.circular(20),
                    )),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/star.png',
                        width: 8,
                        height: 8,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        '${recipe.rate}',
                        style: Fonts.smallerTextSmall.copyWith(
                          color: CustomColors.black,
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Positioned(
            right: 105,
            left: 10,
            bottom: 22,
            child: Text(
              recipe.title,
              style: Fonts.smallTextBold.copyWith(color: CustomColors.white),
            ),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: Text(
              recipe.author,
              style: Fonts.smallerTextSmall.copyWith(color: CustomColors.white),
            ),
          ),
          Positioned(
              right: 44,
              bottom: 13.5,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/timer.png',
                    width: 17,
                    height: 17,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '${recipe.cookingTime} min',
                    style: Fonts.smallerTextRegular.copyWith(
                      color: CustomColors.white,
                    ),
                  )
                ],
              )),
          Positioned(
              right: 10,
              bottom: 10,
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: CustomColors.white,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Image.asset(
                    'assets/bookmark_unselected.png',
                    width: 16,
                    height: 16,
                    fit: BoxFit.cover,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
