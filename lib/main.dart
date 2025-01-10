import 'package:flutter/material.dart';
import 'home.dart';
import 'game.dart';

void main() {
  runApp(SteveHarveyShowApp());
}

class SteveHarveyShowApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ISTE FEUD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/game': (context) => GamePage(),
      },
    );
  }
}
