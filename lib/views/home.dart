// home.dart
import 'package:flutter/material.dart';
import 'package:recipe/models/recipe.api.dart';
import 'package:recipe/models/recipe.dart';
import 'package:recipe/views/widgets/recipe_card.dart';
import 'package:recipe/views/start.dart'; // Import the StartPage

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Recipe> _recipes;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => StartPage()),
            );
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 8), // Adjust the width here
            Text('Nom Nom'),
          ],
        ),
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _recipes.length,
              itemBuilder: (context, index) {
                return RecipeCard(
                  title: _recipes[index].name,
                  cookTime: _recipes[index].totalTime,
                  rating: _recipes[index].rating.toString(),
                  thumbnailUrl: _recipes[index].images,
                );
              },
            ),
    );
  }
}
