import 'package:flutter/material.dart';
import 'package:mychef_app/Data/constants.dart';

class RecipeSubPage extends StatelessWidget {
  final String name;
  final Image image;
  final String meal;
  final String diet;
  final String cuisine;
  final int time;
  final String difficulty;
  final List ingredientsR1;
  final List ingredientsR2;
  final String directions;

  RecipeSubPage({
    @required this.name,
    @required this.image,
    @required this.meal,
    @required this.diet,
    @required this.cuisine,
    @required this.difficulty,
    @required this.time,
    this.ingredientsR1,
    this.ingredientsR2,
    this.directions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            image,
            Container(
              height: 130.0,
              color: kLimeColor,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 50.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '$name',
                      style: kSubPageRecipeNameTextStyle,
                    ),
                    Text(
                      '$meal, $diet, $cuisine',
                      style: kSubPageRecipeSubTextStyle,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.access_time,
                          color: Color(0xffeeffcc),
                          size: 14.0,
                        ),
                        Text(
                          ' $time mins • $difficulty',
                          style: kSubPageRecipeSubSubTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20.0,
                top: 20.0,
              ),
              height: 300.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Ingredients',
                    style: kCategoryLabelTextStyle,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20.0,
                top: 20.0,
              ),
              height: 300.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Directions',
                    style: kCategoryLabelTextStyle,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
