import 'package:flutter/material.dart';
import 'package:newdemo/component/themes.dart';
import 'package:newdemo/pages/welcomepage.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.LightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      home: Material(
        child: LoginPage(),
      ),
    );
  }
}
