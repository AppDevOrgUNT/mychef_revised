import 'package:flutter/material.dart';
import 'package:mychef_app/constants.dart';
import 'package:mychef_app/customAppBar.dart';
import 'listOfRecipes.dart';

class RecipePage extends StatefulWidget {
  @override
  _RecipePageState createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: CustomAppBar(
              title: 'Results',
              subText: 'Based on the ingredients you picked',
            ),
          ),
          Expanded(
            flex: 5,
            child: ListOfRecipes(),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Center(
                child: Text(
                  'Go Back',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
              color: kGreenColor,
              //margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
            ),
          ),
        ],
      ),
    );
  }
}
