import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ui_2/data/user.dart';

class ItemTransactionsWidget extends StatelessWidget {
  final User user;

  const ItemTransactionsWidget({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 2.0, top: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  user.pathImage,
                  height: 50,
                  width: 50,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text('From DAmanda Soul'),
                Text('Received')
              ],
            ),
            const Text('100 USD'),
            const Icon(Icons.arrow_forward_ios),
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