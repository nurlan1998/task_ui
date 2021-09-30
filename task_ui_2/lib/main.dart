import 'package:flutter/material.dart';
import 'package:task_ui_2/screens/home_page.dart';
import 'package:task_ui_2/screens/home_screen.dart';
import 'package:task_ui_2/screens/statistics_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          appBarTheme: const AppBarTheme(color: Colors.black)),
      home: HomePage(),
      // home: const HomePageScreen(),
      // home: const TwoPage(),
    );
  }
}
