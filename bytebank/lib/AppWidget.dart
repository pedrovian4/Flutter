import 'package:bytebank/Modules%20/Screens/HomePage.dart';
import 'package:bytebank/Modules%20/Screens/WireTransferList.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.blue[200]),
        home: WireTransferList());
  }
}
