import 'dart:convert';
import 'package:recipe/models/recipe.dart';
import 'package:http/http.dart' as http;

class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {
   var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {"limit": "18", "start": "0", "tag": "list.recipe.popular"});

    try {
      final response = await http.get(uri, headers: {
        "x-rapidapi-key": "5ecf8c1578msh915cf17bd81a6f5p18eabbjsn84df5905b485", // Replace with your actual API key
        "x-rapidapi-host": "yummly2.p.rapidapi.com",
        "useQueryString": "true"
      });

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);

        if (data.containsKey('feed')) {
          List _temp = [];

          for (var i in data['feed']) {
            if (i.containsKey('content') &&
                i['content'] != null &&
                i['content'].containsKey('details') &&
                i['content']['details'] != null) {
              _temp.add(i['content']['details']);
            }
          }

          return Recipe.recipesFromSnapshot(_temp);
        } else {
          // Handle the case where 'feed' is missing in the response
          print("Error: 'feed' is missing in the response");
        }
      } else if (response.statusCode == 403) {
        // Handle 403 Forbidden error
        print("Error: Forbidden - Check your API key and permissions");
      } else {
        // Handle other non-200 status codes
        print("Error: Failed to load recipes, status code: ${response.statusCode}");
      }
    } catch (e) {
      print("Error: $e");
      // Handle other exceptions as needed, including the case where the API key is null
      return [];
    }

    return [];
  }
}