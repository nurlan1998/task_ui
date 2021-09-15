import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalBottomSheet extends StatefulWidget {
  @override
  _ModalBottomSheetState createState() => _ModalBottomSheetState();
}
class _ModalBottomSheetState extends State<ModalBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Codeplayon Bottom Sheet',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 400,
                        child: Column(
                          children: <Widget>[
                            // Text("Price"),
                            Container(
                              margin: EdgeInsets.only(left: 64.0,top: 32.0,bottom: 16.0),
                              alignment: Alignment.topLeft,
                              child: Text(
                                  "Rating",
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: Colors.orange,
                                          border: Border.all(
                                              color: Colors.orange,
                                              width: 4
                                          )
                                      ),
                                      child: Row(
                                        children: [
                                          Text("5"),
                                          Icon(Icons.star_border)
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: Colors.orange,
                                          border: Border.all(
                                              color: Colors.orange,
                                              width: 4
                                          )
                                      ),
                                      child: Row(
                                        children: [
                                          Text("4"),
                                          Icon(Icons.star_border)
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: Colors.orange,
                                          border: Border.all(
                                            color: Colors.orange,
                                            width: 4
                                          )
                                      ),
                                      child: Row(
                                        children: [
                                          Text("3"),
                                          Icon(Icons.star_border)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 64.0,top: 32.0,bottom: 16.0),
                                alignment: Alignment.topLeft,
                              child: Text("Categories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),)
                            ),
                            _btnRound("All Topic","Popular"),
                            _btnApplyReset("Reset", "Apply"),

                          ],
                        ),
                      );
                    });
              },
              padding:
              EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
              color: Colors.pink,
              child: Text(
                'Click',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
_btnRound(String btn1,String btn2){
  return Row(
    children: [
      Expanded(
          child: Container(
            height: 60,
            margin: EdgeInsets.all(8.0),
            child: OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
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
                  Text(btn1)
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
            onPressed: () {},
            style: ButtonStyle(
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
                      color: Colors.orange,
                      border: Border.all(
                          color: Colors.orange,
                          width: 2
                      )
                  ),
                  child: Icon(Icons.hourglass_top_sharp),
                ),
                Text(btn2)
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

_btnApplyReset(String btn1,String btn2){
  return Row(
    children: [
      Expanded(
          child: Container(
            height: 60,
            margin: EdgeInsets.only(left: 8.0,right: 8.0,top: 64.0),
            child: OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0))),
              ),
              child: Container(
                  alignment: Alignment.center,
                  child: Text(btn1)
              ),
            ),
          )
      ),
      Expanded(
        child: Container(
          height: 60,
          margin: EdgeInsets.only(left: 8.0,right: 8.0,top: 64.0),
          child: OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0))),
            ),
            child: Container(
              alignment: Alignment.center,
                child: Text(btn2)
            ),
          ),
        ),
      ),

    ],
  );
}

// class ShowBottomSheet extends StatefulWidget{
//   @override
//   _ShowBottomSheetState createState() => _ShowBottomSheetState();
// }
// class _ShowBottomSheetState extends State<ShowBottomSheet>{
//   @override
//   Widget build(BuildContext context) {
//    return Scaffold(
//      bottomSheet: _showBottomSheet
//          ? BottomSheet(
//          elevation: 10,
//          backgroundColor: Colors.amber,
//          onClosing: () {
//            // Do something
//          },
//          builder: (BuildContext ctx) => Container(
//            width: double.infinity,
//            height: 250,
//            alignment: Alignment.center,
//            child: ElevatedButton(
//              child: Text(
//                'Close this bottom sheet',
//                style: TextStyle(color: Colors.white),
//              ),
//              onPressed: () {
//                setState(() {
//                  _showBottomSheet = false;
//                });
//              },
//            ),
//          ))
//          : null,
//    );
//   }
// }