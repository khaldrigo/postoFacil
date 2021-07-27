import 'package:flutter/material.dart';
import 'package:posto_facil/map_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        accentColor: Colors.greenAccent,
      ),
      home: MapPage(),
    );
  }
}
