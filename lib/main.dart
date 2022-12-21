import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(390, 80),
                  ),
                  onPressed: () {
                    playSound(1);
                  },
                  child: const Text('do'),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      fixedSize: const Size(350, 80)),
                  onPressed: () {
                    playSound(2);
                  },
                  child: const Text('re'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      fixedSize: const Size(350, 80)),
                  onPressed: () {
                    playSound(3);
                  },
                  child: const Text('mi'),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(390, 80)),
                  onPressed: () {
                    playSound(4);
                  },
                  child: const Text('fa'),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      fixedSize: const Size(350, 80)),
                  onPressed: () {
                    playSound(5);
                  },
                  child: const Text('sol'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      fixedSize: const Size(350, 80)),
                  onPressed: () {
                    playSound(6);
                  },
                  child: const Text('lya'),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(390, 80)),
                  onPressed: () {
                    playSound(7);
                  },
                  child: const Text('si'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
