import 'package:flutter/material.dart';
import 'package:music_app/pages/home.dart';
import 'package:music_app/pages/idMusic.dart';

void main() => runApp(MaterialApp(

    initialRoute: '/idMusic',
    routes: {
      '/': (context) => Home(),
      '/idMusic': (context) => idMusic(),

    }
));

class MusicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Music App',
      theme: ThemeData(
          primaryColor: Colors.grey[100],

      ),

    );
  }
}
