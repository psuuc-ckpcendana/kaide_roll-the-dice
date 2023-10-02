
import 'dart:math';

import 'package:flutter/material.dart';

class screen extends StatefulWidget {
  const screen({super.key});

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  int activeFace = 6;
  List<String> diceImage = [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Die_face_1b.svg/2048px-Die_face_1b.svg.png",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Die_face_2b.svg/1200px-Die_face_2b.svg.png",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Dice-3-b.svg/800px-Dice-3-b.svg.png",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Dice-4-b.svg/2048px-Dice-4-b.svg.png",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Die_face_5b.svg/2048px-Die_face_5b.svg.png",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Dice-6-b.svg/800px-Dice-6-b.svg.png",
    "https://upload.wikimedia.org/wikipedia/commons/1/1c/6sided_dice_%28cropped%29.jpg",
                           ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.account_box_rounded),
        title: Text("Kaide Roll the Dice"),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.pink,
            ],
            begin: Alignment.bottomRight, end: Alignment.topLeft,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Roll The Dice",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),),
              const SizedBox(height: 50,),
              if(activeFace>2)
                Text("You got ${activeFace + 1}", style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20,
                ),),
              const SizedBox(height: 25),
              Image.network(diceImage[activeFace],
              height: 150,),
              const SizedBox(height: 25,),
              TextButton(onPressed: (){
                var random = Random().nextInt(5);
                setState(() {
                  activeFace = random;
                  
                });
                print("Napindot na ang button.");
              }, child: Text("Roll",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
