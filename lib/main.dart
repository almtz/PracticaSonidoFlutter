import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Hope());
}

class Hope extends StatelessWidget {
  void teclaSound(int nota) {
    final audioPlayer = AudioCache();
    audioPlayer.play('sound$nota.mp3');
  }

  Expanded crearTecla(Color color, int nota) {
    return Expanded(child: FlatButton(
      onPressed: (){
        teclaSound(nota);
      },
      color: color,
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'X',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              crearTecla(Colors.blue, 1),
              crearTecla(Colors.red, 2),
              crearTecla(Colors.orange, 3),
              crearTecla(Colors.pink, 4),
              crearTecla(Colors.purple, 5),
              crearTecla(Colors.white, 6),
              crearTecla(Colors.yellow, 7),
              crearTecla(Colors.green, 8),
              crearTecla(Colors.cyan, 9),
              crearTecla(Colors.teal, 0)
            ],
          ),
        ),
      )
    );
  }
}
