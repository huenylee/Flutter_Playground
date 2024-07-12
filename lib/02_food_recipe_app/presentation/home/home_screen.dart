import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_flutter_together/02_food_recipe_app/core/result.dart';
import 'package:learn_flutter_together/02_food_recipe_app/data/repository/recipe_repository.dart';
import 'package:learn_flutter_together/02_food_recipe_app/data/repository/recipe_repository_impl.dart';
import 'package:learn_flutter_together/02_food_recipe_app/domain/model/recipe.dart';
import 'package:learn_flutter_together/02_food_recipe_app/presentation/saved_recipe/saved_recipe_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;
  final RecipeRepository _repository = RecipeRepositoryImpl();

  Future<Result<List<Recipe>, RecipeRepositoryError>> _fetchRecipes() {
    return _repository.fetchRecipes();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: FutureBuilder<Result<List<Recipe>, RecipeRepositoryError>>(
            future: _fetchRecipes(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else if (snapshot.hasData) {
                final result = snapshot.data!;
                return switch (result) {
                  Success(data: final recipes) => _buildContent(recipes),
                  Error(e: final error) =>
                    Text('Failed to load recipes: $error'),
                };
              } else {
                return Text('No data');
              }
            },
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? Image.asset('assets/home_selected.png', width: 24, height: 24)
                : Image.asset('assets/home_unselected.png', width: 24, height: 24),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? Image.asset('assets/bookmark_selected.png', width: 24, height: 24)
                : Image.asset('assets/bookmark_unselected.png', width: 24, height: 24),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? Image.asset('assets/notification_selected.png', width: 24, height: 24)
                : Image.asset('assets/notification_unselected.png', width: 24, height: 24),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? Image.asset('assets/profile_selected.png', width: 24, height: 24)
                : Image.asset('assets/profile_unselected.png', width: 24, height: 24),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.transparent,
        unselectedItemColor: Colors.transparent,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildContent(List<Recipe> recipes) {
    final List<Widget> _widgetOptions = <Widget>[
      Placeholder(),
      SavedRecipeScreen(recipes: recipes),
      Placeholder(),
      Placeholder(),
    ];
    return _widgetOptions.elementAt(_selectedIndex);
  }
}
