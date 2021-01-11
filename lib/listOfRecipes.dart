import 'package:flutter/material.dart';
import 'constants.dart';

class ListOfRecipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              print('Recipe has been selected');
            },
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: 5.0,
                horizontal: 10.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: kYellowColor,
              ),
              height: 100,
              child: Text('Recipes will go here'),
            ),
          );
        },
      ),
    );
  }
}
