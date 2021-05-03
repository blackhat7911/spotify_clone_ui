import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify Clone UI',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

