import 'package:flutter/material.dart';
import 'dart:math';

final randomiser = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var roll = "assets/image/dice-1.png";
  void rolling() {
    var r = randomiser.nextInt(6) + 1;
    setState(() {
      roll = "assets/image/dice-$r.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            roll,
            scale: 5,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: 100,
            child: TextButton(
                onPressed: rolling,
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(400, 300, 200, 100),
                  padding: const EdgeInsets.all(5),
                ),
                child: const Text(
                  "Roll",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
    );
  }
}
