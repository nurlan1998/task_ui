import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ui_2/widgets/card_horizontal_scroll.dart';
import 'package:task_ui_2/widgets/filtr_btn_widget.dart';
import 'package:task_ui_2/widgets/price_add_card_widget.dart';
import 'package:task_ui_2/widgets/rounded_users_scroll.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePageScreen>{
  int currentPage = 0;
  PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Nicholas"),
        leading: GestureDetector(
          child: Image.asset(
              'assets/hello.png',
          ),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.message_outlined,
                  size: 20.0,
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.notifications_none_outlined,
                  size: 20.0,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            const TvPriceBtnAddCardWidget(),
            const CardHorizontalScrollWidget(),
            Container(
              margin:
              const EdgeInsets.only(top: 16.0, left: 32.0, bottom: 8.0),
              alignment: Alignment.centerLeft,
              child: const Text("Send Money"),
            ),
            const UsersHorizontalScrollWidget(),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(height: 8.0,),
            BtnFilterWidget(),
            SizedBox(height: 16.0,),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentPage,
        showElevation: false,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        containerHeight: 64.0,
        itemCornerRadius: 40.0,
        curve: Curves.easeIn,
        onItemSelected: (int value) {
          setState(() {
            currentPage = value;
          });
          pageController!.jumpToPage(value);
        },
        items: [
          BottomNavyBarItem(
            activeColor: Colors.black12,
            inactiveColor: Colors.white,
            icon: const Icon(Icons.apps),
            title: const Text('Home',style: TextStyle(color: Colors.white),),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            activeColor: Colors.black12,
            inactiveColor: Colors.white,
            icon: const Icon(Icons.star_border),
            title: const Text('Favorite',style: TextStyle(color: Colors.white),),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            activeColor: Colors.black12,
            inactiveColor: Colors.white,
            icon: const Icon(Icons.person),
            title: const Text('Profile',style: TextStyle(color: Colors.white),),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}