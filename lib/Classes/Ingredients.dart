import 'package:flutter/material.dart';

//TODO: Getters and Setters
class Ingredients {
  String name;
  bool checked;
  Color catergoryColor;
  //TODO: create condition if this ingredient is selected, it will show up in the recipe page

  Ingredients({
    @required this.name,
    @required this.checked,
    this.catergoryColor,
  });
}
