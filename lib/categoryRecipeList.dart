import 'package:flutter/material.dart';
import 'customCheckBox.dart';
import 'constants.dart';

class CategoryRecipeList extends StatefulWidget {
  final String categoryName;
  final List row1;
  final List row2;
  final Color categoryColor;

  CategoryRecipeList({
    this.categoryName,
    this.row1,
    this.row2,
    this.categoryColor,
  });

  @override
  _CategoryRecipeListState createState() => _CategoryRecipeListState();
}

class _CategoryRecipeListState extends State<CategoryRecipeList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 10.0,
          ),
          child: Text(
            widget.categoryName,
            style: kCategoryLabelTextStyle,
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            bottom: 20.0,
          ),
          //color: Colors.grey,
          height: 105.0,
          child: ListView.builder(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8.0,
                ),
                child: Column(
                  children: <Widget>[
                    CustomCheckbox(
                      categoryColor: widget.categoryColor,
                      label: widget.row1[index].name,
                      isChecked: widget.row1[index].checked,
                      tapped: (bool newValue) {
                        setState(() {
                          widget.row1[index].checked = newValue;
                        });
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    CustomCheckbox(
                      categoryColor: widget.categoryColor,
                      label: widget.row2[index].name,
                      isChecked: widget.row2[index].checked,
                      tapped: (bool newValue) {
                        setState(() {
                          widget.row2[index].checked = newValue;
                        });
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
