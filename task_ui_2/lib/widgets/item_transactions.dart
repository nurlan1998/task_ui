import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemTransactionsWidget extends StatefulWidget{
  const ItemTransactionsWidget({Key? key}) : super(key: key);

  @override
  _ItemTransactionsState createState() => _ItemTransactionsState();
}

class _ItemTransactionsState extends State<ItemTransactionsWidget>{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 2.0,top: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/profile-3.jpg',
                  height: 50,
                  width: 50,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('From DAmanda Soul'),
                Text('Received')
              ],
            ),
            Text('100 USD'),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
        const Divider(
          height: 20,
          thickness: 1,
          indent: 20,
          endIndent: 20,
        ),
      ],
    );
  }
}