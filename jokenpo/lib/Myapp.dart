import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'functions.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  late final String AppName = 'Jokepo';
  Jokenpo u = new Jokenpo();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppName,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blueAccent[100],
      ),
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Text(
                    'Pick one',
                    style:
                        TextStyle(fontSize: 30.9, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 100),
                Home(),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
