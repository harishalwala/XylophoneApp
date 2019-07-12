import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}
class Xylophone extends StatelessWidget {
  void playSound(String note) {
    final player = new AudioCache();
    player.play(note);
  }

  Expanded buildKey(Color colorValue,String noteValue, String text) {
    Expanded expanded = Expanded(
      child: MaterialButton(
          color: colorValue,
          onPressed: () {
            playSound(noteValue);
          },
          child: Text(text)),
    );
    return expanded;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.orange,"note1.wav","Sa"),
              buildKey(Colors.blue,"note2.wav","Re"),
              buildKey(Colors.red,"note3.wav","Ga"),
              buildKey(Colors.teal,"note4.wav","Ma"),
              buildKey(Colors.yellow,"note5.wav","Pa"),
              buildKey(Colors.green,"note6.wav","Da"),
              buildKey(Colors.amberAccent,"note7.wav","Ni"),
            ],
          ),
        )),
      ),
    );
  }
}
