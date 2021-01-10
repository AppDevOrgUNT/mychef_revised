import 'package:flutter/material.dart';
import 'constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.horizontal,
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Checkbox(
                label: 'Testing',
              );
            },
            childCount: 15,
          ),
        ),
      ],
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
      margin: EdgeInsets.all(5.0),
      color: kRedColor,
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.white,
            ),
          ),
          Text(label),
        ],
      ),
    );
  }
}
