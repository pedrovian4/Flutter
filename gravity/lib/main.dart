import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.amber),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<Home> {
  late double x, y = 0.0;

  var dy = 1.0, gravity = 1;

  late Ticker _ticker;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _ticker = Ticker((now) {
      setState(() {});
    });

    _ticker.start();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _ticker.dispose();
  }

  @override
  Widget build(BuildContext context) {
    x = (MediaQuery.of(context).size.width / 2);

    if (y > MediaQuery.of(context).size.height - 20) {
      dy = -dy;
    }
    dy += gravity;
    y += dy;

    if (y <= 0) {
      y = MediaQuery.of(context).size.height - 90;
    }
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Gravity'),
      ),
      body: Column(children: [
        Transform.translate(
          offset: Offset(x, y),
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.amber),
          ),
        )
      ]),
    );
  }
}
