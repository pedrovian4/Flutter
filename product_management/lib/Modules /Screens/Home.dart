import 'dart:io';
import 'package:flutter/material.dart';
import 'package:test/Modules%20/Components/TextFieldPage.dart';
import 'package:test/Modules%20/Shared/Themes/TextStyle.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'E-Products',
              style: AppText.mainTextStyle,
            ),
          ),
        ),
        body: TextFieldApp());
  }
}
