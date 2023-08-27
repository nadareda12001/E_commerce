import 'package:flutter/material.dart';
import 'app_color.dart';

ThemeData getThemeDataLight() => ThemeData(
  brightness: Brightness.light,
    primarySwatch: MyAppColors.primaryColor,
    fontFamily: 'RobotoMono',
    appBarTheme: const AppBarTheme(
        backgroundColor: MyAppColors.appColor,iconTheme: IconThemeData(color: Colors.black)),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.white),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.indigoAccent),
    switchTheme: SwitchThemeData(
      trackColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
    ),
);
