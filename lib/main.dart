import 'package:flutter/material.dart';
import 'mainPages.dart';

void main() => runApp(MyChef());

class MyChef extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        //access different pages
        '/home': (context) => Pages(),
      },
    );
  }
}
