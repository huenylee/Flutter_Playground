import 'package:flutter/material.dart';
import 'package:learn_flutter_together/02_food_recipe_app/domain/model/recipe.dart';
import 'package:learn_flutter_together/02_food_recipe_app/ui/colors.dart';

import 'home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

const mockRecipe = Recipe(
    title: '백종원의 된장찌개보다 맛있는 김치찌개',
    author: '오준석',
    imagePath:
        'https://i.namu.wiki/i/8drgvI-cQLUfJDC00zbl2ZolK4W3o4ZkVSpR-zM5FZk_QzT58vYnx_7ohk0qwGYYiSLPiZgwccyIEFUtYKDjUQ.webp',
    cookingTime: 20,
    rate: 5.0);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: CustomColors.white),
        useMaterial3: true,
      ),
      home: const HomeScreen()
    );
  }
}
