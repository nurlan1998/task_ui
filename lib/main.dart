import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:task_ui/widget_bottom_sheet.dart';
import 'package:task_ui/widget_detail.dart';
import 'package:task_ui/widget_main.dart';

import 'course.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: MainWidgetPage()
      home: MainWidgetPage(),
    );
  }
}
