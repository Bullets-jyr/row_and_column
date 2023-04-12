import 'package:flutter/material.dart';

class ExpandedFlexible extends StatelessWidget {
  const ExpandedFlexible({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Container 위젯의 형태는 원하는대로 지정을 할 수 있지만,
      // 일반적으로 child 위젯의 형태를 따라갑니다.
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              // Expanded / Flexible
              // * Column, Row 위젯의 children에만 사용할 수 있습니다. (만약에 다른 곳에서 사용하게 되면 에러가 발생합니다.)
              // Expanded: 최대한으로 남아있는 사이즈를 모두 차지합니다. Expanded를 적용한 children 위젯이 2개 이상이면 남아있는 공간을 나눠서 차지합니다.
              // Expanded의 파라미터 flex: Default 값은 1, 남아있는 공간을 나누는 비율
              // Flexible: 하위 위젯에서 지정한 비율만큼의 자리를 차지하고, 나머지 공간은 버림,
              // 버린 공간은 다른 children 위제에서 Expanded를 사용하더라도 차지할 수 없습니다.
              Flexible(
                // flex: 2,
                child: Container(
                  color: Colors.red,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                // flex: 3,
                child: Container(
                  color: Colors.orange,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
