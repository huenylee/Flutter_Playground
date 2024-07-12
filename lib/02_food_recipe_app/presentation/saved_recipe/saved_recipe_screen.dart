import 'package:flutter/cupertino.dart';
import 'package:learn_flutter_together/02_food_recipe_app/domain/model/recipe.dart';
import 'package:learn_flutter_together/02_food_recipe_app/presentation/component/image_card.dart';

final class SavedRecipeScreen extends StatefulWidget {
  final List<Recipe> recipes;

  const SavedRecipeScreen({
    super.key,
    required this.recipes,
  });

  @override
  State<StatefulWidget> createState() => _SavedRecipeScreen();
}

final class _SavedRecipeScreen extends State<SavedRecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
      child: ListView.builder(
        itemCount: widget.recipes.length,
        itemBuilder: (context, index) {
          final item = widget.recipes[index];
          return Column(
            children: [
              ImageCard(
                recipe: item,
              ),
              SizedBox(
                height: 20,
              )
            ],
          );
        },
      ),
    );
  }
}
