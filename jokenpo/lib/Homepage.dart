import 'package:flutter/material.dart';

import 'functions.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String? userInput;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 90,
              width: 90,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.grey[100]),
                onPressed: () {
                  userInput = 'Scissors';
                  setState(() {
                    u.Check(userInput!);
                    print(u.Check(userInput!));
                  });
                },
                child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset('assets/images/paper.jpg')),
              ),
            ),
            SizedBox(
              height: 90,
              width: 90,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.grey[100]),
                onPressed: () {
                  userInput = 'Rock';
                  setState(() {
                    u.Check(userInput!);
                    print(u.Check(userInput!));
                  });
                },
                child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset('assets/images/rockicon.png')),
              ),
            ),
            SizedBox(
              height: 90,
              width: 90,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.grey[100]),
                onPressed: () {
                  userInput = 'Scissors';
                  setState(() {
                    u.Check(userInput!);
                    print(u.Check(userInput!));
                  });
                },
                child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset('assets/images/scissors .png')),
              ),
            )
          ],
        ),
        Container(
          color: Colors.amber,
        ),
        SizedBox(height: 30),
        Text('You ${u.result}',
            style: TextStyle(fontSize: 30.9, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
