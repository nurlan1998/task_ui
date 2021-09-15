// import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailWidgetPage extends StatefulWidget {
  @override
  _DetailWidgetState createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidgetPage> {
  // bool _showBottomSheet = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: Text(
          "Design Thinking",
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Image.asset("assets/like.png"))
        ],
      ),
      // bottomSheet: BottomSheet(
      //   builder: (context) => Container(
      //     height: 200,
      //     child: Center(
      //
      //     ),
      //   ),
      //   onClosing: (){},
      // ),
      body: _listLesson(),
    );
  }
}

// _buildBody() {
//   return Scaffold(
//     body: ListView(
//       children: [
//         _headerImage(),
//         _descriptionPlaylist(),
//         _listLesson()
//       ],
//     ),
//     // child: Column(
//     // ),
//   );
// }

_listLesson() {
  return ListView(
    children: [
      _headerImage(),
      _descriptionPlaylist(),
      itemList(),
      itemList(),
      itemList(),
      itemList(),
      itemList(),
      btnPriceBuy(),
    ],
  );
}

btnPriceBuy() {
  return Container(
    height: 80,
    child: Card(
      // margin: EdgeInsets.only(left: 16.0,right: 16.0),
      elevation: 128.0,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.orangeAccent,
                  border: Border.all(
                      color: Colors.orange,
                      width: 2
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.cached_sharp),
                  Text("32.52")
                ],
              ),
            )
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 64,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.blue,
                  border: Border.all(
                      color: Colors.blue,
                      width: 2
                  )
              ),
              child: TextButton(
                onPressed: (){
                },
                child: Text(
                    "Buy now",
                  style: TextStyle(color: Colors.white),
                ),
              ),
          )
          )
        ],
      ),
    )
  );
}

itemList() {
  return Container(
    height: 80,
    margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          OutlinedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
                ),
              ),
              onPressed: () {},
              child: Icon(Icons.play_circle_fill
              )
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Introduction"),
              Text("06:25/17:45")
            ],
          ),
          Container(
            child: TextButton(onPressed: () {}, child: Icon(Icons.lock),),
          )
        ],
      ),
    ),
  );
}

_descriptionPlaylist() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        height: 50,
        margin: EdgeInsets.only(top: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.orange,
        ),
        child: OutlinedButton(
          onPressed: () {},
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0))),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: EdgeInsets.only(right: 4.0),
                  child: Text("Playlist")
              ),
              Container(
                alignment: Alignment.center,
                width: 30,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: Text(
                  "17",
                ),
              )
            ],
          ),
        ),
      ),
      Container(
        height: 50,
        margin: EdgeInsets.only(top: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white,
        ),
        child: OutlinedButton(
          onPressed: () {},
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0))),
          ),
          child: Row(
            children: [
              Text("Description"),
            ],
          ),
        ),
      ),
    ],
  );
}

_headerImage() {
  return Container(
      margin: EdgeInsets.only(left: 32,right: 32.0,bottom: 8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
          border: Border.all(
            color: Colors.white,
          )
      ),
      child: Column(
        children: [
          Center(
            child: Image.asset("assets/course.jpg"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                      border: Border.all(
                          color: Colors.white,
                      )
                  ),
                  child: TextButton(
                      onPressed: () {}, child: Icon(Icons.play_arrow)),
              ),
              Text("06:25/17:45"),
              Icon(Icons.surround_sound_outlined),
              Icon(Icons.fullscreen),
            ],
          ),
        ],
      )
  );
}
