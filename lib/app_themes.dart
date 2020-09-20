import 'package:flutter/material.dart';

enum AppTheme { Dark, Light }

final appThemeData = {
  AppTheme.Dark: ThemeData(
      brightness: Brightness.dark, primarySwatch: Colors.green, primaryColor: Colors.black),
  AppTheme.Light: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.black,
    primarySwatch: Colors.blue,
    accentColor: Colors.redAccent,
    buttonColor: Colors.deepPurpleAccent,
  )
};
