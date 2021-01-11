import 'package:flutter/material.dart';
import 'AppPages/Pages.dart';
import 'AppPages/recipePage.dart';

void main() => runApp(MyChef());

class MyChef extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        //access different pages
        '/': (context) => Pages(),
        '/recipes': (context) => RecipePage(),
      },
    );
  }
}
