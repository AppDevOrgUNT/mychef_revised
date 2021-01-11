import 'package:flutter/material.dart';
import 'package:mychef_app/AppPages/recipePage.dart';
import '../Data/constants.dart';
import '../Data/ingredients_lists.dart';
import '../CustomWidgets/categoryRecipeList.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        top: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CategoryRecipeList(
            categoryName: 'Proteins',
            row1: proteinsR1,
            row2: proteinsR2,
            categoryColor: kRedColor,
          ),
          CategoryRecipeList(
            categoryName: 'Grains',
            row1: grainsR1,
            row2: grainsR2,
            categoryColor: kYellowColor,
          ),
          CategoryRecipeList(
            categoryName: 'Vegetables',
            row1: vegetablesR1,
            row2: vegetablesR2,
            categoryColor: kGreenColor,
          ),
          CategoryRecipeList(
            categoryName: 'Fruits',
            row1: fruitsP1,
            row2: fruitsP2,
            categoryColor: kPurpleColor,
          ),
          CategoryRecipeList(
            categoryName: 'Dairy',
            row1: dairyP1,
            row2: dairyP2,
            categoryColor: kBlueColor,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipePage(),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 10.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.amber,
              ),
              child: Text(
                'Get Recipes',
                textAlign: TextAlign.center,
                style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
