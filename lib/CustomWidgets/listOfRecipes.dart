import 'package:flutter/material.dart';
import '../Data/constants.dart';
import '../Data/recipe_lists.dart';

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
          return GestureDetector(
            //can be its own class
            onTap: () {
              print('Recipe has been selected');
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
                    child: recipes[index].image,
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 10.0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            recipes[index].name,
                            style: kRecipeNameTextStyle,
                          ),
                          Text(
                            '${recipes[index].meal}, ${recipes[index].diet}, ${recipes[index].cuisine}, etc..',
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
                                ' ${recipes[index].time} • ${recipes[index].difficulty}',
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
        },
      ),
    );
  }
}
