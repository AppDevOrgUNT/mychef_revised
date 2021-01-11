import 'package:flutter/material.dart';
import 'constants.dart';

const kCheckboxLabelTextStyle = TextStyle(
  fontWeight: FontWeight.w300,
  color: Colors.white,
  fontSize: 14.0,
);

const kCategoryLabelTextStyle = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 18.0,
  color: Colors.black54,
);

final List<String> ingredients = <String>[
  'Egg',
  'Beef',
  'Pork',
  'Chicken',
  'Sausage'
]; //List of ingredients can be appended here for each category:

final List<bool> isSelected = <bool>[
  true,
  true,
  true,
  true,
  true
]; //makes individual checkboxes selected

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        //left: 20.0,
        top: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: 10.0,
            ),
            child: Text(
              'Category',
              style: kCategoryLabelTextStyle,
            ),
          ),
          Container(
            color: Colors.grey,
            height: 30.0,
            child: ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) => Checkbox(
                label: ingredients[index],
                isChecked: isSelected[index],
                tapped: (bool newValue) {
                  setState(() {
                    isSelected[index] = newValue;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Checkbox extends StatelessWidget {
  final String label;
  final bool isChecked;
  final Function tapped;

  Checkbox({this.label, this.isChecked, this.tapped});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      margin: EdgeInsets.symmetric(
        horizontal: 5.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: kRedColor,
      ),
      child: Row(
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.check,
                size: 20.0,
              ),
            ],
          ),
          Center(
            child: Text(
              'TESTING',
              style: kCheckboxLabelTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}

// GestureDetector(
// onTap: () {
// tapped(!isChecked);
// },
// child: Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20.0),
// color: kRedColor,
// ),
// //height: 30.0,
// //width: 10.0,
// margin: EdgeInsets.symmetric(
// vertical: 10.0,
// horizontal: 5.0,
// ),
//
// child: Row(
// children: <Widget>[
// Container(
// margin: EdgeInsets.symmetric(
// horizontal: 5.0,
// ),
// decoration: BoxDecoration(
// color: Colors.white,
// shape: BoxShape.circle,
// ),
// child: Padding(
// padding: const EdgeInsets.all(5), //TODO: Make check mark bigger
// child: isChecked
// ? Icon(Icons.check_sharp, size: 10.0, color: Colors.black)
// : Icon(Icons.check_box_outline_blank,
// size: 10.0, color: Colors.white),
// ),
// ),
// Padding(
// padding: EdgeInsets.all(8.0),
// child: FittedBox(
// fit: BoxFit.fitWidth,
// child: Text(
// label,
// style: kCheckboxLabelTextStyle,
// ),
// ),
// ),
// ],
// ),
// ),
// );

//FOR CHECKBOX
// Container(
// margin: EdgeInsets.symmetric(
// horizontal: 5.0,
// vertical: 5.0,
// ),
// height: 30.0,
// width: 100.0,
// child: Center(
// child: Text(
// 'Testing',
// style: kCheckboxLabelTextStyle,
// ),
// ),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20.0),
// color: kRedColor,
// ),
// ),
