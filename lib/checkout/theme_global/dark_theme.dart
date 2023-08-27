import 'package:flutter/material.dart';

ThemeData getThemeDataDark()=>ThemeData(
  buttonTheme: ButtonThemeData(
      buttonColor: Colors.amber,
      disabledColor: Colors.black
  ),
  accentColor: Colors.red,
  brightness: Brightness.dark,
  primaryColor: Colors.amber,
textTheme: TextTheme(),

);