import 'package:flutter/material.dart';
import '../Data/recipe_lists.dart';
import '../CustomWidgets/recipeCard.dart';

/*
  Recipe and Results (from Get Results Button) page should have the same
  information. Saved can be conditional (if saved, add to the another list..)
 */

class ListOfRecipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 9,
        itemBuilder: (BuildContext context, int index) {
          return RecipeCard(
            name: recipes[index].name,
            image: recipes[index].image,
            meal: recipes[index].meal,
            diet: recipes[index].diet,
            cuisine: recipes[index].cuisine,
            difficulty: recipes[index].difficulty,
            time: recipes[index].time,
          );
        },
      ),
    );
  }
}
