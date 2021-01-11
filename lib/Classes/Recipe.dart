import 'package:flutter/material.dart';
import 'package:mychef_app/Classes/Ingredients.dart';

class Recipe {
  //Create enums for some of these
  //TODO: Getters and Setters
  String name;
  Image image;
  String meal;
  String diet;
  String cuisine;
  int time;
  String difficulty;
  List ingredients;
  bool isResult; //based on bottom nav bar
  bool isSaved; //based on bottom nav bar
  //TODO: create condition if a recipe is saved or not

  Recipe({
    @required this.name,
    @required this.image,
    @required this.meal,
    @required this.diet,
    @required this.cuisine,
    @required this.difficulty,
    this.ingredients,
    @required this.time,
    this.isResult,
    this.isSaved,
  });
}
