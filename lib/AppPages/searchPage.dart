import 'package:flutter/material.dart';
import 'package:mychef_app/Data/constants.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        backgroundColor: kLimeColor,
      ),
      body: Text('What is needed to be searched?'),
    );
  }
}
