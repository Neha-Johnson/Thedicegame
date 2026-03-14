import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
            child: Text("Dice App"),
          ) 
        ),
        body: const DicePage(),
      ),
    );
  }
}

// Stateful Widget (Dice logic)
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

   int diceNumber = 4;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Dice Number: $diceNumber',
            style: const TextStyle(fontSize: 30),
          ),
      
          SizedBox(
            width: 150.0,
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.tealAccent,
              ),
              onPressed: () {
                setState(() {
                  print('$diceNumber pressed');
                  diceNumber = Random().nextInt(6) + 1;
                  print('dice number is $diceNumber');
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image:AssetImage('images/dice$diceNumber.png'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}