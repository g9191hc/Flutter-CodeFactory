import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner:
          false, //개발(debug)모드에만 보이지만, 굳이 안보이게 하고 싶을 경우에 사용
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF99231),
      //Hex Code 사용시, Colors메소드'.'가 아닌 Color함수'()'의 인자로 Hex Code값 입력
      //'0xFF'로시작 : 16진수형태(0x)로 처음 2문자는 불투명도(보통 FF)
      //구글이나 안드로이드스튜디오의 자체 컬러피커 기능을 이용하여 사용할 이미지와 같은 색상값 추출
      body: Column(
        //Column은 여러개의 위젯을 세로방향으로 순서대로 정렬하여 사용
        mainAxisAlignment: MainAxisAlignment.center, //Column의 주축(세로)방향 정렬
        children: [
          Image.asset(
            'asset/img/logo.png',
          ),
          CircularProgressIndicator(
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
