import 'package:flutter/material.dart';
import '../Data/constants.dart';
import '../AppPages/recipeSubPage.dart';

class RecipeCard extends StatelessWidget {
  final String name;
  final Image image;
  final String meal;
  final String diet;
  final String cuisine;
  final int time;
  final String difficulty;

  RecipeCard({
    @required this.name,
    @required this.image,
    @required this.meal,
    @required this.diet,
    @required this.cuisine,
    @required this.difficulty,
    @required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipeSubPage(
              name: name,
              image: image,
              meal: meal,
              diet: diet,
              cuisine: cuisine,
              difficulty: difficulty,
              time: time,
            ),
          ),
        );
        //this should pass the info of that specific recipe using the
        //recipe[index].property
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: 7.0,
          horizontal: 10.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: kYellowColor,
        ),
        height: 100,
        child: Row(
          children: <Widget>[
            ClipRRect(
              //Makes corner of image rounded
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
              child: image,
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: kRecipeNameTextStyle,
                    ),
                    Text(
                      '$meal, $diet, $cuisine',
                      style: kRecipeSubTextStyle,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.access_time,
                          color: Color(0xffffedc9),
                          size: 14.0,
                        ),
                        Text(
                          ' $time mins • $difficulty',
                          style: kRecipeSubSubTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
