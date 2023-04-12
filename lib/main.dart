import 'package:flutter/material.dart';
import 'package:row_and_column/screen/expanded_flexible.dart';
// lib위치 기준으로 import
import 'package:row_and_column/screen/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      // home: HomeScreen(),
      home: ExpandedFlexible(),
    ),
  );
}
