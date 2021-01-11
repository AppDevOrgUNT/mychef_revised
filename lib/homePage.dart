import 'package:flutter/material.dart';
import 'constants.dart';
import 'lists.dart';
import 'customCheckBox.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _trackingScrollController = TrackingScrollController();

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
            margin: EdgeInsets.symmetric(
              vertical: 2.0,
            ),
            color: Colors.grey,
            height: 80.0,
            child: ListView.builder(
                controller: _trackingScrollController,
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
                          label: ingredientsP1[index],
                          isChecked: isSelectedP1[index],
                          tapped: (bool newValue) {
                            setState(() {
                              isSelectedP1[index] = newValue;
                            });
                          },
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        CustomCheckbox(
                          label: ingredientsP2[index],
                          isChecked: isSelectedP2[index],
                          tapped: (bool newValue) {
                            setState(() {
                              isSelectedP2[index] = newValue;
                            });
                          },
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
