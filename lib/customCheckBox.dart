import 'constants.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  final String label;
  final bool isChecked;
  final Function tapped;

  CustomCheckbox({this.label, this.isChecked, this.tapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tapped(!isChecked);
      },
      child: Container(
        width: kCheckBoxWidth,
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
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                isChecked
                    ? Icon(
                        Icons.check,
                        size: 20.0,
                      )
                    : Icon(
                        Icons.check_box_outline_blank,
                        size: 20.0,
                        color: Colors.white,
                      ),
              ],
            ),
            Text(
              label,
              style: kCheckboxLabelTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
