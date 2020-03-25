import 'package:CryptoFlash/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'CryptoFlash',
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.tealAccent,
      ),
      home: HomeScreen(),
    );
  }
}
