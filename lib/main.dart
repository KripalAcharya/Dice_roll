import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice App",
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceNumber = 1;

  changeDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Dice Roller",
          style: TextStyle(fontWeight: FontWeight.w900, color: Colors.black87),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          // Image
          Center(
              child: Image.asset(
            "lib/resources/$diceNumber.png",
            height: 500,
            width: 500,
          )),
          // Button
          MaterialButton(
            height: 50,
            minWidth: 300,
            color: Colors.blue,
            onPressed: changeDice,
            child: const Text(
              "Roll",
              style: TextStyle(color: Colors.white, fontSize: 45),
            ),
          ),
          const SizedBox(height: 70),
          // Text
          const Text('CONGRATS!!!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),
        ],
      ),
      backgroundColor: Colors.blue.shade200,
    );
  }
}
