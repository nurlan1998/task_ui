import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemListWidget extends StatelessWidget{
  const ItemListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
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
                child: const Icon(Icons.play_circle_fill
                )
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Introduction"),
                Text("06:25/17:45")
              ],
            ),
            TextButton(onPressed: () {}, child: const Icon(Icons.lock),)
          ],
        ),
      ),
    );
  }

}