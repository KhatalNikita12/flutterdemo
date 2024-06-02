import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData LightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 20, 226, 126),
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle:
              TextStyle(color: Color.fromARGB(255, 11, 11, 11), fontSize: 25),
        ),
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );
}
