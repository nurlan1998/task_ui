import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ui_2/screens/home_screen.dart';
import 'package:task_ui_2/screens/profile_screen.dart';
import 'package:task_ui_2/screens/statistics_screen.dart';
import 'package:task_ui_2/screens/wallet_screen.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  int selectedPage = 0;

  final _pageOptions = [
    const HomePageScreen(),
    const TwoPage(),
    const WalletScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        // body: _pageOptions[selectedPage],
        body: Stack(
          children: [
            Container(
              height: 700,
              child: _pageOptions[selectedPage],
            ),
            Positioned(
              bottom: 8.0,
                  right: 16.0,
                  left: 16.0,
                  child: bottomNavigationBar
              )
          ],
        ),
    );
  }
  Widget get bottomNavigationBar {
    return Container(
      height: 80,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.usb),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.assignment_ind),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.multiline_chart),
            ),
          ],
          onTap: (index){
            setState(() {
              selectedPage = index;
            });
          },
          currentIndex: selectedPage,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
        ),
      ),
    );
  }
}