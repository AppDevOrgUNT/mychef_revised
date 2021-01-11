import 'package:flutter/material.dart';
import '../Data/constants.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: kLimeColor,
      ),
      body: Text('Includes: user login, what else?'),
    );
  }
}
