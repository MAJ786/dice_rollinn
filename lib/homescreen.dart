import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int RDicenumber = 1;
  int LDicenumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(backgroundColor: Colors.pinkAccent,
        body: Container(alignment: Alignment.center,
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  setState(() {
                    RDicenumber = Random().nextInt(6)+1;
                    LDicenumber = Random().nextInt(6)+1;
                  });
                },
                  child: Image(image: AssetImage("images/dice$RDicenumber.png"),),
                ),
              ),),
              Expanded(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  setState(() {
                    RDicenumber = Random().nextInt(6)+1;
                    LDicenumber = Random().nextInt(6)+1;
                  });
                },
                  child: Image(image: AssetImage("images/dice$LDicenumber.png"),),
                ),
              ),),

            ],
          ),
        ),
      ),
    );
  }
}
