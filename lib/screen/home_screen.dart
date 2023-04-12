import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Container 위젯의 형태는 원하는대로 지정을 할 수 있지만,
      // 일반적으로 child 위젯의 형태를 따라갑니다.
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.black,
          child: Row(
            // Column일 경우,
            // MainAxisAlignment - 주축(세로) 정렬
            // start - 시작 (최상단)
            // end - 끝 (최하단)
            // center - 가운데
            // spaceBetween - 위젯과 위젯의 사이가 동일하게 배치된다.
            // spaceEvenly - 위젯을 같은 간격으로 배치하지만 끝과 끝에도 위젯이 아닌 빈 간격으로 시작한다.
            // spaceAround - spaceEvenly + 끝과 끝의 간격은 1/2 (spaceEvenly 끝 빈 간격 기준 1/2)

            // Row일 경우,
            // MainAxisAlignment - 주축(가로) 정렬
            // start - 시작 (최좌측)
            // end - 끝 (최우측)
            // center - 가운데
            // spaceBetween - 위젯과 위젯의 사이가 동일하게 배치된다.
            // spaceEvenly - 위젯을 같은 간격으로 배치하지만 끝과 끝에도 위젯이 아닌 빈 간격으로 시작한다.
            // spaceAround - spaceEvenly + 끝과 끝의 간격은 1/2 (spaceEvenly 끝 빈 간격 기준 1/2)
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.red,
                width: 50.0,
                height: 50.0,
              ),
              Container(
                color: Colors.orange,
                width: 50.0,
                height: 50.0,
              ),
              Container(
                color: Colors.yellow,
                width: 50.0,
                height: 50.0,
              ),
              Container(
                color: Colors.green,
                width: 50.0,
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}