import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainWidgetPage extends StatefulWidget{
  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidgetPage>{
  bool isClick = false;
  late Color myColor;
  int currentPage = 0;

  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        backgroundColor: Colors.blueAccent,
        title: Container(
          alignment: Alignment.bottomLeft,
          margin: EdgeInsets.only(top: 32.0,left: 16.0,bottom: 8.0),
          child: Text("Nurlan Ungarbaev",
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
          ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 16.0),
           child:IconButton(
               onPressed: () {}, icon: Image.asset("assets/profile.png"))
          )
        ],
      ),
      body: _buildBody(),
      bottomNavigationBar: FancyBottomNavigation(
        onTabChangedListener: (int position) {
          setState(() {
            currentPage = position;
          });
        },
        tabs: [
          TabData(iconData: Icons.home, title: "Home",
          onclick: (){
            final FancyBottomNavigationState fState = bottomNavigationKey
                .currentState as FancyBottomNavigationState;
            fState.setPage(2);
            // Navigator.of(context).pushNamed('/home');
          }),
          TabData(iconData: Icons.star_border, title: "Favorite",
              onclick: (){
                // Navigator.of(context).pushNamed('/detail');
              }),
          TabData(iconData: Icons.menu_book, title: "Menu",
              onclick: (){
                // Navigator.of(context).pushNamed('/bottom');
              }),
          // TabData(iconData: Icons.notification_important, title: "Notification"),
          TabData(iconData: Icons.account_circle, title: "Profile"),
        ],
        initialSelection: 0,
        key: bottomNavigationKey,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}

_buildBody() {
  return Scaffold(
    backgroundColor: Colors.white,
    body: ListView(
      padding: EdgeInsets.all(16),
      children: [
        _searchEdit(),
        _typeCourse(),
        _horizontalScroll(),
      ],
    ),
  );
}

_horizontalScroll() {
  return CarouselSlider(
    items: [
      Container(
        height: 100,
        // margin: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Image.asset(
          "assets/course.jpg",
        ),
      ),
      Container(
        // margin: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Image.asset("assets/course.jpg"),
      ),
      Container(
        // margin: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Image.asset("assets/course.jpg"),
      ),
    ],
    options: CarouselOptions(
      height: 300.0,
      enlargeCenterPage: true,
      autoPlay: true,
      aspectRatio: 16 / 9,
      autoPlayCurve: Curves.fastOutSlowIn,
      enableInfiniteScroll: true,
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      viewportFraction: 0.8,
    ),
  );
}

_typeCourse() {
  bool isButtonTopic = false;
  bool isButtonPopular = false;
  bool isButtonAdvance = false;
  bool isButtonNewest = false;

  return Column(
    children: [
      Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(left: 8.0, top: 16.0, bottom: 16.0),
        child: Text(
          "Courses",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      Row(
        children: [
          Expanded(
              child: Container(
                height: 60,
                margin: EdgeInsets.all(8.0),
                child: OutlinedButton(
                  onPressed: () {

                    isButtonTopic = true;
                    isButtonAdvance = false;
                    isButtonPopular = false;
                    isButtonNewest = false;
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (isButtonTopic != false ){
                          return Colors.blue;
                        }else{
                          return Colors.white;
                        }
                      },
                    ),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(2),
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                            border: Border.all(
                                color: Colors.blue,
                                width: 2
                            )
                        ),
                        child: Icon(Icons.local_fire_department),
                      ),
                      Text("All Topic")
                    ],
                  ),
                ),
              )
          ),
          Expanded(
            child: Container(
              height: 60,
              margin: EdgeInsets.all(8.0),
              child: OutlinedButton(
                onPressed: () {
                  isButtonPopular = true;
                  isButtonTopic = false;
                  isButtonAdvance = false;
                  isButtonNewest = false;
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (isButtonPopular != false ){
                        return Colors.orange;
                      }else{
                        return Colors.white;
                      }
                    },
                  ),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(2),
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.orange,
                              width: 2
                          )
                      ),
                      child: Icon(Icons.hourglass_top_sharp),
                    ),
                    Text("Popular")
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          Expanded(
              child: Container(
                height: 60,
                margin: EdgeInsets.all(8.0),
                child: OutlinedButton(
                  onPressed: () {
                    isButtonNewest = true;
                    isButtonTopic = false;
                    isButtonPopular = false;
                    isButtonAdvance = false;
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (isButtonNewest != false ){
                          return Colors.purple;
                        }else{
                          return Colors.white;
                        }
                      },
                    ),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(2),
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                            border: Border.all(
                                color: Colors.purple,
                                width: 2
                            )
                        ),
                        child: Icon(Icons.star_border),
                      ),
                      Text("Newest")
                    ],
                  ),
                ),
              )),
          Expanded(
            child: Container(
              height: 60,
              margin: EdgeInsets.all(8.0),
              child: OutlinedButton(
                onPressed: () {
                  isButtonAdvance = true;
                  isButtonTopic = false;
                  isButtonPopular = false;
                  isButtonNewest = false;
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (isButtonAdvance != false ){
                        return Colors.green;
                      }else{
                        return Colors.white;
                      }
                    },
                  ),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(2),
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.green,
                              width: 2
                          )
                      ),
                      child: Icon(Icons.star_border),
                    ),
                    Icon(Icons.save), Text("Advance")
                  ],
                ),
              ),
            ),
          ),
        ],
      )
    ],
  );
}

typeButton() {}

_searchEdit() {
  return Row(
    children: [
      Expanded(
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search",
            prefixIcon: Icon(Icons.search),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide(color: Colors.black, width: 2.0),
            ),
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 8.0),
        height: 60,
        child: ElevatedButton(
          onPressed: () {},
          child: Icon(Icons.cached_sharp),
        ),
      )
    ],
  );
}