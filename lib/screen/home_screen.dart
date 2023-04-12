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
          // 실행 중인 앱의 사이즈: MediaQuery.of(context).size
          // width: MediaQuery.of(context).size.width: Column 테스트
          // height: MediaQuery.of(context).size.height: Row 테스트
          height: MediaQuery.of(context).size.height,
          child: Row(
            // MainAxisAlignment, CrossAxisAlignment 동시 적용 가능

            // Column일 경우,
            // MainAxisAlignment - 주축(세로) 정렬, 차지할 수 있는 남는 공간의 최대 크기를 차지한다.
            // start - 시작 (최상단)
            // end - 끝 (최하단)
            // center - 가운데
            // spaceBetween - 위젯과 위젯의 사이가 동일하게 배치된다.
            // spaceEvenly - 위젯을 같은 간격으로 배치하지만 끝과 끝에도 위젯이 아닌 빈 간격으로 시작한다.
            // spaceAround - spaceEvenly + 끝과 끝의 간격은 1/2 (spaceEvenly 끝 빈 간격 기준 1/2)

            // Row일 경우,
            // MainAxisAlignment - 주축(가로) 정렬, 차지할 수 있는 남는 공간의 최대 크기를 차지한다.
            // start - 시작 (최좌측)
            // end - 끝 (최우측)
            // center - 가운데
            // spaceBetween - 위젯과 위젯의 사이가 동일하게 배치된다.
            // spaceEvenly - 위젯을 같은 간격으로 배치하지만 끝과 끝에도 위젯이 아닌 빈 간격으로 시작한다.
            // spaceAround - spaceEvenly + 끝과 끝의 간격은 1/2 (spaceEvenly 끝 빈 간격 기준 1/2)
            mainAxisAlignment: MainAxisAlignment.start,

            // 공통
            // CrossAxisAlignment - 반대축 정렬 (Column일 경우 가로, Row일 경우 세로)이며, 최소한의 사이즈만을 차지한다. 즉 child 위젯들의 사이즈만큼만 차지한다.
            // start - 시작
            // end - 끝
            // center - 가운데 (CrossAxisAlignment 설정하지 않아도 세팅되는 Default 값)
            // stretch - 최대한으로 늘린다. (강제로 하위 위젯들의 사이즈가 늘어난다.)
            crossAxisAlignment: CrossAxisAlignment.start,
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