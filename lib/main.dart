import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void playSound(int noteKey){
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/note$noteKey.wav"),
    );
  }
  Expanded buildKey({Color noteColor,int noteKey}){
    return Expanded(
      child: Container(
        child: FlatButton(
          child: null,
          onPressed: () {
            playSound(noteKey);
          },
          color: noteColor,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.pinkAccent.shade700,
      title: 'Xylophone',
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Xylophone',
              style:TextStyle(
                fontFamily: 'PottaOne',
              ) ,
            ),
          ),
          backgroundColor: Colors.pinkAccent.shade700,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(noteColor:Colors.red,noteKey: 1),
              buildKey(noteColor:Colors.orange,noteKey: 2),
              buildKey(noteColor:Colors.yellow,noteKey: 3),
              buildKey(noteColor:Colors.green,noteKey: 4),
              buildKey(noteColor:Colors.teal,noteKey: 5),
              buildKey(noteColor:Colors.blue,noteKey: 6),
              buildKey(noteColor:Colors.indigo,noteKey: 7),
            ],
          ),
        ),
      ),
    );
  }
}
