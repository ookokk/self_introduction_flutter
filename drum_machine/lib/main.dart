import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  const DrumMachine({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  const DrumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: buildDrumPad('bip.wav', Colors.indigo)),
                Expanded(child: buildDrumPad('bongo.wav', Colors.grey)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: buildDrumPad('clap1.wav', Colors.green)),
                Expanded(child: buildDrumPad('clap2.wav', Colors.red)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: buildDrumPad('clap3.wav', Colors.black)),
                Expanded(child: buildDrumPad('crash.wav', Colors.yellow)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: buildDrumPad('how.wav', Colors.blue)),
                Expanded(child: buildDrumPad('oobah.wav', Colors.brown)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: buildDrumPad('woo.wav', Colors.purple)),
                Expanded(child: buildDrumPad('ridebel.wav', Colors.pink)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

TextButton buildDrumPad(String ses, Color renk) {
  return TextButton(
    onPressed: () {
      Audio.load('ses')
        ..play()
        ..dispose();
    },
    child: Container(
      color: renk,
    ),
  );
}
