import 'package:flutter/material.dart';
import 'package:roll_the_dice/screens/screens.dart';

void main(){
  runApp(roll_the_dice());
}

class roll_the_dice extends StatelessWidget {
  const roll_the_dice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen(),
    );
  }
}
