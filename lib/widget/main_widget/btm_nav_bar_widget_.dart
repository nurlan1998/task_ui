import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ui/screens/screen_main.dart';

class BtmNavBarWidget extends StatefulWidget{
  const BtmNavBarWidget({Key? key}) : super(key: key);

  @override
  _BtmNavBarState createState() => _BtmNavBarState();
}

class _BtmNavBarState extends State<BtmNavBarWidget>{
  int currentPage = 0;
  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return FancyBottomNavigation(
      onTabChangedListener: (int position) {
        setState(() {
          currentPage = position;
          print(currentPage.toString());
          if(currentPage == 1) Navigator.of(context).pushNamed("/detail");
        });
      },
      tabs: [
        TabData(iconData: Icons.home, title: "Home",),
        TabData(iconData: Icons.star_border, title: "Favorite",),
        TabData(iconData: Icons.menu_book, title: "Menu",
        ),
        // TabData(iconData: Icons.notification_important, title: "Notification"),
        TabData(iconData: Icons.account_circle, title: "Profile"),
      ],
    );
  }
}