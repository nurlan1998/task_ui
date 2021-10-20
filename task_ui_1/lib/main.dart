import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ui/screens/screen_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      // home: DetailWidgetPage(),
      home: MainWidgetPage()
      // initialRoute: '/',
      // routes: {
      //   '/': (BuildContext context) => const MainWidgetPage(),
      //   '/detail' : (BuildContext context) => const DetailWidgetPage(),
      // },
    );
  }
}
