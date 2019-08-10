import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            buildKey(color: Colors.red, soundNumber: 1),
            buildKey(color: Colors.blue, soundNumber: 2),
            buildKey(color: Colors.green, soundNumber: 3),
            buildKey(color : Colors.pink, soundNumber: 4),
            buildKey(color: Colors.purple, soundNumber: 5),
            buildKey(color: Colors.teal, soundNumber: 6),
            buildKey(color: Colors.orange, soundNumber: 7)
          ],
        ),
      ),
    );
  }

  Expanded buildKey({Color color, int soundNumber}){
    return Expanded(
      child: Container(
        width: double.infinity,
        color: color,
        child: FlatButton(
          onPressed: (){
            playMusic(soundNumber);
          },
        ),
      ),
    );
  }

  void playMusic(int soundNumber){
    AudioCache player = AudioCache();
    player.play('note$soundNumber.wav');
  }
}