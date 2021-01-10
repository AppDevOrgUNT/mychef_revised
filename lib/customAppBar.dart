import 'package:flutter/material.dart';
import 'constants.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final String subText;

  CustomAppBar({@required this.title, @required this.subText});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kLimeColor,
      child: Padding(
        padding: EdgeInsets.only(
          top: 60.0,
          left: 40.0,
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    title,
                    style: kAppBarTitleTextStyle,
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    subText,
                    style: kAppBarSubTextStyle,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('Search Button Pressed');
                  //TODO: Implement search functionality
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
