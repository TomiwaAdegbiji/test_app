import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:test_app/albums.dart';
import 'package:test_app/nowplaying.dart';
import 'package:test_app/settings.dart';


class SwipeTabBar extends StatefulWidget {
  @override
  _SwipeTabBarState createState() => _SwipeTabBarState();
}

class _SwipeTabBarState extends State<SwipeTabBar> {

  final _pageViewController = PageController();

  int _activePage = 0;

  @override
  void dispose() {
    _pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageViewController,
        children: <Widget>[
          Album(),
          Nowplaying(),
          Settings()
        ],
        onPageChanged: (index) {
          setState(() {
            _activePage = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _activePage,
        onTap: (index) {
          _pageViewController.animateToPage(index, duration: Duration(milliseconds: 200), curve: Curves.bounceOut);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.list_bullet, color: Colors.white,), activeIcon: Icon(CupertinoIcons.list_bullet, color: Colors.blue,), title: Text("Albums", style: TextStyle(color: Colors.white),)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.music_note_2, color: Colors.white,), activeIcon: Icon(CupertinoIcons.music_note_2,color: Colors.blue,), title: Text("Now Playing", style: TextStyle(color: Colors.white),)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings_solid,color: Colors.white,), activeIcon: Icon(CupertinoIcons.settings_solid,color: Colors.blue,), title: Text("Settings",style: TextStyle(color: Colors.white),)),
        ],
      ),
    );
  }
}