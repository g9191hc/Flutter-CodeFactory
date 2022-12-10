import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              //Expanded와 Flexible은 Column과 Row 안에서만 사용가능.
              //Flexible은 Expanded와 사용방법은 동일하지만, 본래 위젯의 크기를 제외한 나머지는 버려버림(flex~)
              //(해당공간은 expanded로도 확장못함)
              Expanded(
                //Expanded를 사용시, 주축방향으로 남은 여백을 Expended를 사용하는 각 container의 flex값 만큼 나누어 확장
                //flex의 default는 1임. 따라서 별도 지정하지 않으면, Expended를 사용하는 container의 갯수 만큼 나누어 확장
                //예제1. 4개의 container중 3개만 Expended로 감싸져 있으면(모두 flex값 지정하지 않음),
                //Expended가 없는 1개의 공간을 제외한 나머지 공간을 3개의 container가 균등배분하여 확장됨
                //예제2. 4개중 3개가 Expended사용하는 조건일 경우 : Expended(flex:1), Expended(flex:2), Expended(flex:3)
                //Expended를 사용하지 않은 1개의 공간을 제외한 나머지 공간을 1:2:3의 비율로 나눠서 확장됨
                flex: 1,
                child: Container(
                  color: Colors.red,
                  width: 50,
                  height: 50,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.orange,
                  width: 50,
                  height: 50,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.yellow,
                  width: 50,
                  height: 50,
                ),
              ),
              Container(
                color: Colors.green,
                width: 50,
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
