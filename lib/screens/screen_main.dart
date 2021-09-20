import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ui/widget/detail_widget/btn_price_widget.dart';
import 'package:task_ui/widget/detail_widget/description_play_list_widget.dart';
import 'package:task_ui/widget/detail_widget/header_image_widget.dart';
import 'package:task_ui/widget/detail_widget/item_list_widget.dart';
import 'package:task_ui/widget/main_widget/scroll_widget.dart';
import 'package:task_ui/widget/main_widget/search_bar_widget.dart';
import 'package:task_ui/widget/main_widget/type_course_widget.dart';

class MainWidgetPage extends StatefulWidget {
  const MainWidgetPage({Key? key}) : super(key: key);

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidgetPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.orange[50],
      appBar: AppBar(
        toolbarHeight: 100.0,
        backgroundColor: Colors.blueAccent,
        title: Container(
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.only(top: 32.0, left: 16.0, bottom: 8.0),
            child: const Text(
              "Nurlan Ungarbaev",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            )),
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                  onPressed: () {}, icon: Image.asset("assets/profile.png")))
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(16),
        child: _getPage(currentPage),
      )),
      bottomNavigationBar: FancyBottomNavigation(
        onTabChangedListener: (int position) {
          setState(() {
            currentPage = position;
          });
        },
        tabs: [
          TabData(
            iconData: Icons.home,
            title: "Home",
          ),
          TabData(
            iconData: Icons.star_border,
            title: "Favorite",
          ),
          TabData(
            iconData: Icons.menu_book,
            title: "Menu",
          ),
          // TabData(iconData: Icons.notification_important, title: "Notification"),
          TabData(iconData: Icons.account_circle, title: "Profile"),
        ],
        // key: bottomNavigationKey,
      ),
    );
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            SearchBarWidget(),
            TypeCourseWidget(),
            ScrollWidget(),
          ],
        );
      case 1:
        return Column(
          children: const [
            HeaderImage(),
            BtnPlayDescriptionWidget(),
            ItemListWidget(),
            ItemListWidget(),
            ItemListWidget(),
            ItemListWidget(),
            BtnPriceWidget(),
          ],
        );
    }
  }

  @override
  void initState() {
    super.initState();
  }
}
