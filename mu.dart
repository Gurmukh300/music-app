import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 100, 99, 99),
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () {
                player.play(AssetSource('note1.wav'));
              },
              child: Text('Do it'),
            ),
          ),
        ),
      ),
    );
  }
}
