import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ui_2/data/user.dart';

class ItemCard extends StatelessWidget{
  final User user;

  const ItemCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
      child: Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(left:4.0,right: 4.0),
        width: 150,
        height: 90,
        color: Colors.blue,
        padding: const EdgeInsets.all(8.0),
        // margin: const EdgeInsets.only(right: 8.0,left: 8.0,top: 8.0,bottom: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset('assets/master.png'),
                Icon(Icons.more_horiz)
              ],
            ),
            const SizedBox(height: 32.0,),
            Text(user.title.toString()),
            Text(user.cardId.toString())
          ],
        ),
      )
    );
  }
}