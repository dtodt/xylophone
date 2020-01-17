import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _key(id: 1, color: Colors.red),
              _key(id: 2, color: Colors.orange),
              _key(id: 3, color: Colors.yellow),
              _key(id: 4, color: Colors.green),
              _key(id: 5, color: Colors.teal),
              _key(id: 6, color: Colors.blue),
              _key(id: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }

  Widget _key({int id, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        child: Container(),
        onPressed: () {
          player.play('sounds/note$id.wav');
        },
      ),
    );
  }
}
