import 'package:learn_flutter_together/02_food_recipe_app/core/result.dart';
import 'package:learn_flutter_together/02_food_recipe_app/domain/model/recipe.dart';

abstract interface class RecipeRepository {
  Future<Result<List<Recipe>, RecipeRepositoryError>> fetchRecipes();
}

enum RecipeRepositoryError {
  networkFailed
}