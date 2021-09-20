import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ui/widget/main_widget/btm_nav_bar_widget_.dart';
import 'package:task_ui/widget/main_widget/scroll_widget.dart';
import 'package:task_ui/widget/main_widget/search_bar_widget.dart';
import 'package:task_ui/widget/main_widget/type_course_widget.dart';

class MainWidgetPage extends StatefulWidget{
  const MainWidgetPage({Key? key}) : super(key: key);

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidgetPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.orange[50],
      appBar: AppBar(
        toolbarHeight: 100.0,
        backgroundColor: Colors.blueAccent,
        title: Container(
          alignment: Alignment.bottomLeft,
          margin: const EdgeInsets.only(top: 32.0,left: 16.0,bottom: 8.0),
          child: const Text("Nurlan Ungarbaev",
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
          ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16.0),
           child:IconButton(
               onPressed: () {}, icon: Image.asset("assets/profile.png"))
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: const [
              SearchBarWidget(),
              TypeCourseWidget(),
              ScrollWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BtmNavBarWidget(),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}