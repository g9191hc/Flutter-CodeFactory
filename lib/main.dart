import 'package:flutter/material.dart';//플러터 재료 패키지 가져옴(import 'me까지치고 enter로 자동완성)
import 'package:flutter_install_test/screen/home_screen.dart';


//main함수 - MaterialApp - home: Scaffold - body: 위치(Center등) - child:(원하는위젯)

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}