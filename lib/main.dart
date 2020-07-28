import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound (int audioNumber) {
    final player = AudioCache();
    player.play('note$audioNumber.wav');
  }
  Expanded displayButtons(int btnSound,Color color){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(btnSound);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              displayButtons(1,Colors.red),
              displayButtons(2,Colors.orange),
              displayButtons(3,Colors.yellow),
              displayButtons(4,Colors.green),
              displayButtons(5,Colors.teal),
              displayButtons(6,Colors.blue),
              displayButtons(7,Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
