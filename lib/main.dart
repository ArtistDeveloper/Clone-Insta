import 'package:flutter/material.dart';
import 'page/root_page.dart';
import 'page/tab_page.dart';

void main() => runApp(Start());

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return TabPage();
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
      ),
      home: TabPage(),
    );
  }
}