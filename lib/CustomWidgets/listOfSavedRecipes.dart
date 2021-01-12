import 'package:flutter/material.dart';
import '../Data/recipe_lists.dart';
import '../CustomWidgets/recipeCard.dart';

/*
  Recipe and Results (from Get Results Button) page should have the same
  information. Saved can be conditional (if saved, add to the another list..)
 */

class ListOfSavedRecipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return RecipeCard(
            name: savedRecipes[index].name,
            image: savedRecipes[index].image,
            meal: savedRecipes[index].meal,
            diet: savedRecipes[index].diet,
            cuisine: savedRecipes[index].cuisine,
            difficulty: savedRecipes[index].difficulty,
            time: savedRecipes[index].time,
          );
        },
      ),
    );
  }
}
