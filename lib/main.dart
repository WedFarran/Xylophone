import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  @override
  Widget build(BuildContext context) {
    playSound(sound) async {
      final player = AudioPlayer();
      await player.play(
          AssetSource('note$sound.wav')); // will immediately start playing
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
              child: Column(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () => playSound(1),
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () => playSound(2),
                  child: Container(
                    color: Colors.orange,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () => playSound(3),
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () => playSound(4),
                  child: Container(
                    color: Colors.green,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () => playSound(5),
                  child: Container(
                    color: Colors.teal,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () => playSound(6),
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () => playSound(7),
                  child: Container(
                    color: Colors.purple,
                  ),
                ),
              ),
            ],
          )),
        ));
  }
}
