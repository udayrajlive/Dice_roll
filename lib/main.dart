import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(child: Text('Dice')),
          backgroundColor: Colors.red,
        ),
        body:const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  //variable for left dice
  int leftnumber = 1;
  //variable for left dice
  int rightnumber = 1;
 //dice change function
  change() {setState(() {
    leftnumber = Random().nextInt(6) + 1;
    rightnumber = Random().nextInt(6) + 1;
  });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  change();
                });
              },
              child: Image.asset('images/dice$leftnumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  change();
                });
              },
              child: Image.asset('images/dice$rightnumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
