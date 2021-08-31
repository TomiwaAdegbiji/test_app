import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Album extends StatefulWidget {
  const Album({Key? key}) : super(key: key);

  @override
  _AlbumState createState() => _AlbumState();
}

class _AlbumState extends State<Album> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Albums", style: TextStyle(fontSize: 25, color: Colors.white),),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Icon(CupertinoIcons.person_alt),
            ),
            title: Text("Music Title"),
            subtitle: Text("Artist"),
          )
        ],
      ),
    );
  }
}
