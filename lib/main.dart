import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 17, 15),
      appBar: AppBar(
        backgroundColor: Colors.teal,
    ),
    body: DicePage(),
    ),
  ));
}
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
        children: [
          Text(
          'Dice Number: $diceNumber',
          style: TextStyle(fontSize: 30),
        ),
SizedBox(
  width: 150.0,
  child: TextButton(
    style: TextButton.styleFrom(
      foregroundColor: Colors.tealAccent
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
          image: AssetImage('images/dice$diceNumber.png'),
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