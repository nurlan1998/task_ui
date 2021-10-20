import 'package:block_learn/app/service_locator.dart';
import 'package:block_learn/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp>{
  bool _initialized = false;

    @override
    Widget build(BuildContext context) {
      if(!_initialized){
        return Container();
      }
      return MaterialApp(
        home: HomePage(),
      );
    }

    @override
  void initState() {
      super.initState();
      initialize().then((_){
        setState(() {
          _initialized = true;
        });
      });
  }
    Future<void> initialize() async {
      await ServiceLocator.setup();
    }
}