import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('assets_note$soundNumber.wav'));
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(' '),
        style: TextButton.styleFrom(backgroundColor: color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Colors.blue, soundNumber: 1),
            buildKey(color: Colors.white, soundNumber: 2),
            buildKey(color: Colors.teal, soundNumber: 3),
            buildKey(color: Colors.red, soundNumber: 4),
            buildKey(color: Colors.orange, soundNumber: 5),
            buildKey(color: Colors.yellowAccent, soundNumber: 6),
            buildKey(color: Colors.green, soundNumber: 7),
          ],
        )),
      ),
    );
  }
}
