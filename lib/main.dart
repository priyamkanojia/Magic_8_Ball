import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Center(child: Text('Ask Me Anything')), backgroundColor: Colors.black45),
          backgroundColor: Colors.white,
          body: MyApp(),
        ),
      ),
    );
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int decision =1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed:(){
            setState(() {
              decision=Random().nextInt(5)+1;
            });
            print(decision);
          },
          child: Image.asset('images/ball$decision.png'),
      ),
    );
  }
}
//