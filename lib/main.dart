import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/src/audio_cache.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int a){
    final player = AudioCache();
    player.play('note$a.wav');
  }
  Expanded BuildKey({Color color , int num}){
    return Expanded(
      child: TextButton(
        child: Text('Button $num'),
        onPressed: (){
          playSound(num);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
          primary: Colors.white,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BuildKey(color: Colors.red, num:1),
              BuildKey(color: Colors.orange, num:2),
              BuildKey(color: Colors.blueAccent, num:3),
              BuildKey(color: Colors.blueGrey, num:4),
              BuildKey(color: Colors.green, num:5),
              BuildKey(color: Colors.greenAccent, num:6),
              BuildKey(color: Colors.amber, num:7),

            ],
          ),

        ),
      ),
    );
  }
}
