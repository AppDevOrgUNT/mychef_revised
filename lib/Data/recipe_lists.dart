import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Classes/Recipe.dart';
import '../Classes/Ingredients.dart';

const kSampleImageURL =
    'https://media.tarkett-image.com/large/TH_24567080_24594080_24596080_24601080_24563080_24565080_24588080_001.jpg';

final List<Recipe> recipes = [
  Recipe(
    name: 'Simple French Toast',
    image: Image(
      image: AssetImage('images/french_toast.jpg'),
    ),
    meal: 'Breakfast',
    diet: 'Vegetarian',
    cuisine: 'French',
    difficulty: 'Easy',
    time: 15,
  ),
  Recipe(
    name: 'Caesar Salad',
    image: Image(
      image: AssetImage('images/chicken_caesar.jpg'),
    ),
    meal: 'Salad',
    diet: 'Diet',
    cuisine: 'Cuisine',
    difficulty: 'Difficulty',
    time: 30,
  ),
  Recipe(
    name: 'Cobb Salad',
    image: Image.asset('images/cobb_salad.jpg'),
    meal: 'Meal',
    diet: 'Diet',
    cuisine: 'Cuisine',
    difficulty: 'Difficulty',
    time: 12,
  ),
  Recipe(
    name: 'Swedish Meatballs',
    image: Image.asset('images/swedish_meatballs.jpg'),
    meal: 'Meal',
    diet: 'Diet',
    cuisine: 'Cuisine',
    difficulty: 'Difficulty',
    time: 18,
  ),
  Recipe(
    name: 'Yogurt Parfait',
    image: Image.asset('images/yogurt_parfait.jpg'),
    meal: 'Meal',
    diet: 'Diet',
    cuisine: 'Cuisine',
    difficulty: 'Difficulty',
    time: 10,
  ),
  Recipe(
    name: 'Strawberry Cheesecake',
    image: Image.asset('images/strawberry_cheesecake.png'),
    meal: 'Meal',
    diet: 'Diet',
    cuisine: 'Cuisine',
    difficulty: 'Difficulty',
    time: 45,
  ),
  Recipe(
    name: 'Filipino Spaghetti',
    image: Image.asset('images/filipino_spaghetti.jpg'),
    meal: 'Meal',
    diet: 'Diet',
    cuisine: 'Cuisine',
    difficulty: 'Difficulty',
    time: 50,
  ),
  Recipe(
    name: 'Shoyu Ramen',
    image: Image.asset('images/shoyu_ramen.jpg'),
    meal: 'Meal',
    diet: 'Diet',
    cuisine: 'Cuisine',
    difficulty: 'Difficulty',
    time: 30,
  ),
  Recipe(
    name: 'Fried Chicken',
    image: Image.asset('images/fried_chicken.jpg'),
    meal: 'Meal',
    diet: 'Diet',
    cuisine: 'Cuisine',
    difficulty: 'Difficulty',
    time: 30,
  ),
];
