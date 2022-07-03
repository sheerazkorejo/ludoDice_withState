// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'dicemainPage.dart';

void main() {
  runApp(const DicePage());
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: DiceMainPage());
  }
}
