import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void playSound(int i){
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/note$i.wav"),
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
              Expanded(
                child: Container(
                  child: FlatButton(
                    onPressed: () {
                      playSound(1);
                    },
                    color: Colors.red,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: FlatButton(
                    child: null,
                    onPressed: () {
                      playSound(2);
                    },
                    color: Colors.orange,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: FlatButton(
                    child: null,
                    onPressed: () {
                      playSound(3);
                    },
                    color: Colors.yellow,
                  ),
                ),
              ),
              Expanded(
                child: Container(

                  child: FlatButton(
                    child: null,
                    onPressed: () {
                      playSound(4);
                    },
                    color: Colors.green,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: FlatButton(
                    child: null,
                    onPressed: () {
                      playSound(5);
                    },
                    color: Colors.blue,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: FlatButton(
                    child: null,
                    onPressed: () {
                      playSound(6);
                    },
                    color: Colors.indigo,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: FlatButton(
                    child: null,
                    onPressed: () {
                      playSound(7);
                    },
                    color: Colors.purple,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
