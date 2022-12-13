import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller; //처음에 null이므로 nullable(?)로 선언해야함.
  final String homeURL = 'https://m.blog.naver.com/k91hc';
  HomeScreen({Key? key})
      : super(key: key); //controller를 final로 선언하지 않았으므로, const 사용불가

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //앱바 사용
      appBar: AppBar(
        //앱바 위젯 설정
        title: Text('My Naver Blog/k91hc'),
        centerTitle: true, //미지정시 안드로이드(좌측정렬), IOS(중앙정렬) / false면 둘다 좌측정렬
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {
                if (controller == null) {
                  return;
                }
                controller!.loadUrl(
                    homeURL); //loadUrl은 controller가 null이면 실행불가하므로, controll가 널이 아니라는(!) 표시를 해줘야함
              },
              icon: Icon(Icons.home)),
        ],
      ),
      //웹뷰 사용
      body: WebView(
          initialUrl: homeURL, //최초화면 웹페이지 링크. 따라서 핫리스타트 해야함.
          javascriptMode:
              JavascriptMode.unrestricted, //default : disabled(자바 비활성화)
          // 아래는 처음 웹뷰 실행시 실행할 콜백함수 지정 (on이 붙으면 ~할 때 라는 의미)
          // 마우스 오버하거나 해당 페이지로 이동하여 보면, WebViewController객체를 인자로 받는 함수가 들어가야 함.
          onWebViewCreated: (WebViewController controller) {
            //웹뷰 시작시 생성된 컨트롤러를 class의 controller변수에 저장하여 사용
            this.controller = controller;
          }),
    );
  }
}
