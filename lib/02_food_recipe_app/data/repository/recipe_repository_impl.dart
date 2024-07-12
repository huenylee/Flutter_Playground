import 'package:learn_flutter_together/02_food_recipe_app/core/result.dart';
import 'package:learn_flutter_together/02_food_recipe_app/data/repository/recipe_repository.dart';
import 'package:learn_flutter_together/02_food_recipe_app/domain/model/recipe.dart';

final class RecipeRepositoryImpl implements RecipeRepository {
  @override
  Future<Result<List<Recipe>, RecipeRepositoryError>> fetchRecipes() async {
    final List<Recipe> recipes = [
      Recipe(title: '둘이 먹으면 한 명이 죽는 암살 김치찌개', author: '백종원', imagePath: 'https://i.namu.wiki/i/8drgvI-cQLUfJDC00zbl2ZolK4W3o4ZkVSpR-zM5FZk_QzT58vYnx_7ohk0qwGYYiSLPiZgwccyIEFUtYKDjUQ.webp', cookingTime: 10, rate: 4.0),
      Recipe(title: '한 숟갈에 천국 가는 된장찌개', author: '이연복', imagePath: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQILsslTbhQ3QxulZaLQoYrtxQ5reWKEWJrdg&s', cookingTime: 15, rate: 4.5),
      Recipe(title: '눈 깜짝할 새 완성되는 초간단 라면', author: '이혜정', imagePath: 'https://i.namu.wiki/i/8s7OaNPsZ8KC1e8RQ6QZEwgfFUoIVVOIm0jA72-UO6Imw0OgI1aEK_DulMeXWbg4tstts3IQFMJS0jmYKD9rzQ.webp', cookingTime: 5, rate: 4.2),
      Recipe(title: '백만 볼트 충격 매운탕', author: '최현석', imagePath: 'https://recipe1.ezmember.co.kr/cache/recipe/2015/09/25/b021d5001639e90c846752b4f3ac9db9.jpg', cookingTime: 20, rate: 4.8),
      Recipe(title: '한입 먹고 넋 나가는 갈비찜', author: '이원일', imagePath: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX1XRm_Wm3wwhCpOFRxedKNkW-ZYplB90b8w&s', cookingTime: 120, rate: 4.9),
    ];
    return Result.success(recipes);
  }
}