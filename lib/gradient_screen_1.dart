import 'package:flutter/material.dart';
import 'dice_roller.dart';

class GradientTheme extends StatelessWidget {
  const GradientTheme(this.Color1, this.Color2, {super.key});
  const GradientTheme.mine({super.key})
      : Color1 = const Color.fromARGB(100, 200, 300, 400),
        Color2 = const Color.fromARGB(400, 300, 200, 100);
  final Color Color1;
  final Color Color2;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color1, Color2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: const DiceRoller(),
    );
  }
}
