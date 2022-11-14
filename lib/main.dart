import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_autobiography/page/Expertise.dart';
import 'package:flutter_autobiography/page/project.dart';
import 'package:flutter_autobiography/page/readingPlan.dart';
import 'package:flutter_autobiography/page/self_intro.dart';

final player=AudioPlayer();

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final  tabs=[
    const page1(),
    const page2(),
    const page3(),
    const page4(),
  ];

  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {

    final player=AudioPlayer();
    player.play(AssetSource("asset/Flower Dance,mp3"));

    return MaterialApp(
      home: Scaffold(
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xff12CBC4),
          selectedItemColor: Colors.white,
          selectedFontSize: 15,
          unselectedFontSize: 10,
          iconSize: 30,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Self Intro"),
            BottomNavigationBarItem(icon: Icon(Icons.psychology),label: "Expertise"),
            BottomNavigationBarItem(icon: Icon(Icons.poll),label: "Project"),
            BottomNavigationBarItem(icon: Icon(Icons.school),label: "reading_plain"),
          ],
          onTap:_onItemClick,

        ),
      ),
    );
  }
  void _onItemClick(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}


