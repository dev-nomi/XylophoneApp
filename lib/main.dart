import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
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
                    child: null,
                    onPressed: () {
                      final assetsAudioPlayer = AssetsAudioPlayer();
                      assetsAudioPlayer.open(
                        Audio("assets/note1.wav"),
                      );
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
                      final assetsAudioPlayer = AssetsAudioPlayer();
                      assetsAudioPlayer.open(
                          Audio("assets/note2.wav"),
                      );
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
                      final assetsAudioPlayer = AssetsAudioPlayer();
                      assetsAudioPlayer.open(
                        Audio("assets/note3.wav"),
                      );
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
                      final assetsAudioPlayer = AssetsAudioPlayer();
                      assetsAudioPlayer.open(
                        Audio("assets/note4.wav"),
                      );
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
                      final assetsAudioPlayer = AssetsAudioPlayer();
                      assetsAudioPlayer.open(
                        Audio("assets/note5.wav"),
                      );
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
                      final assetsAudioPlayer = AssetsAudioPlayer();
                      assetsAudioPlayer.open(
                        Audio("assets/note6.wav"),
                      );
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
                      final assetsAudioPlayer = AssetsAudioPlayer();
                      assetsAudioPlayer.open(
                        Audio("assets/note1.wav"),
                      );
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
