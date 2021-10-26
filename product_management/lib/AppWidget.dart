import 'package:flutter/material.dart';
import 'Modules /Screens/Home.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.purple[100],
          appBarTheme: AppBarTheme(color: Colors.purple[100])),
      home: Home(),
    );
  }
}
