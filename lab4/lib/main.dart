import 'package:flutter/material.dart';

import 'core_widgets_demo.dart';
import 'layout_basic_demo.dart';
import 'package:lab4/InputControlsDemo.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      //ex 1 :home: CoreWidgetsDemo(),
      //ex 2: home: InputControlsDemo(),
      //ex 3
      home: LayoutBasicsDemo(),
    //ex 4: appStructure().
    ),
  );
}