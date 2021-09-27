import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TvPriceBtnAddCardWidget extends StatefulWidget{
  const TvPriceBtnAddCardWidget({Key? key}) : super(key: key);

  @override
  _TvPriceBtnAddCardWidgetState createState() => _TvPriceBtnAddCardWidgetState();
}

class _TvPriceBtnAddCardWidgetState extends State<TvPriceBtnAddCardWidget>{
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 16.0,right: 16.0),
            child: Column(
              children: [
                const Text(
                  '2 264,84',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
                ),
                Text("Total balance",style: TextStyle(color: Colors.grey[800]),)
              ],
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            margin: const EdgeInsets.all(32.0,),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[900], // This is what you need!
              ),
              child: const Text("+ Add Card",style: TextStyle(fontSize: 12.0),),
              onPressed: (){},
            ),
          ),
          // Column(
          //   children: [
          //     Container(
          //       child: Row(
          //         children: <Widget>[
          //         Image.asset("assets/master.png"),
          //         ],
          //       ),
          //     )
          //   ],
          // )
        ]
    );
  }
}