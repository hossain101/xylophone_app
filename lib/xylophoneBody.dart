import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class XylophoneBody extends StatefulWidget {
  const XylophoneBody({Key? key}) : super(key: key);

  @override
  _XylophoneBodyState createState() => _XylophoneBodyState();
}

class _XylophoneBodyState extends State<XylophoneBody> {
  Expanded XylophoneKey({required int audio,required Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$audio.wav');
        },
        child: Text(''),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music Player Yoo'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          XylophoneKey(audio: 1,color: Colors.red),
          XylophoneKey(audio: 2,color: Colors.orange),
          XylophoneKey(audio: 3,color: Colors.yellowAccent),
          XylophoneKey(audio: 4,color: Colors.green),
          XylophoneKey(audio: 5,color: Colors.blueAccent),
          XylophoneKey(audio: 6,color: Colors.indigo),
          XylophoneKey(audio: 7,color: Colors.deepPurple),
        ],
      ),
    );
  }
}
