import 'package:flutter/material.dart';
import 'package:talk_japanese/screens/home_page.dart';

void main() {
  runApp(const LearnJapanese());
}

class LearnJapanese extends StatelessWidget {
  const LearnJapanese({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

