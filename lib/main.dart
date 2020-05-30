import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sndNum) {
    final player = AudioCache();
    player.play("note$sndNum.wav");
  }

  Expanded buildKey({Color color, int sndNum}) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(1.2),
        child: FlatButton(
          color: color,
          onPressed: () {
            playSound(sndNum);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, sndNum: 1),
              buildKey(color: Colors.orange, sndNum: 2),
              buildKey(color: Colors.yellow, sndNum: 3),
              buildKey(color: Colors.green, sndNum: 4),
              buildKey(color: Colors.teal, sndNum: 5),
              buildKey(color: Colors.blue, sndNum: 6),
              buildKey(color: Colors.purple, sndNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
