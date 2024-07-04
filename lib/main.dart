import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void playsound(int n) async{
    final player=AudioPlayer();
    await player.play(AssetSource('note$n.wav'));
  }


  Expanded buildkey(int n,Color color){
    return Expanded(
      child: ElevatedButton(onPressed: ()  {
        playsound(n);
      },
        style: ElevatedButton.styleFrom(
            backgroundColor:color,
            shape: RoundedRectangleBorder()
        ),
        child:  SizedBox.shrink(),),
    );
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(1,Colors.red),
              buildkey(2,Colors.orange),
              buildkey(3,Colors.yellow),
              buildkey(4,Colors.lightGreen),
              buildkey(5,Colors.green),
              buildkey(6,Colors.lightBlue),
              buildkey(7,Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}
