import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:audioplayer/audioplayer.dart';




class Nowplaying extends StatefulWidget {
  const Nowplaying({Key? key}) : super(key: key);


  @override
  _NowplayingState createState() => _NowplayingState();
}

class _NowplayingState extends State<Nowplaying> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
          child: Details()
      ),
    );
  }
}

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),//or 15.0
          child: Container(
            height: 300.0,
            width: 300.0,
            color: Color(0xff18db4c),
            child: Image.network('https://picsum.photos/250?image=9'),
          ),
        ),
        SizedBox(height: 15,),
        Center(child: Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: LinearProgressIndicator(
              value: 50,


            ))),
        SizedBox(),
        Center(child: Buttons()),



      ],
    );
  }
}


class Buttons extends StatefulWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  AudioPlayer audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {

    AudioPlayer audioPlugin = AudioPlayer();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CupertinoButton(
            onPressed: () {audioPlayer.stop();},
            child: Icon(CupertinoIcons.backward_fill, size: 40,
            )),
        CupertinoButton(
            onPressed: () {},
            child: Icon(CupertinoIcons.stop_circle_fill, size: 40,
            )),
        CupertinoButton(
            onPressed: () {
              audioPlayer.play('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-5.mp3');
            },
            child: Icon(CupertinoIcons.play_circle_fill, size: 50,
            )),
        CupertinoButton(
            onPressed: () {audioPlayer.pause();},
            child: Icon(CupertinoIcons.pause_circle_fill, size: 40,
            )),
        CupertinoButton(
            onPressed: () {},
            child: Icon(CupertinoIcons.forward_fill, size: 40,
            )),
      ],
    );
  }
}
