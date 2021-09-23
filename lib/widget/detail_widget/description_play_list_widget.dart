import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BtnPlayDescriptionWidget extends StatelessWidget{
  const BtnPlayDescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 50,
          margin: const EdgeInsets.only(top: 16.0),
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
                    margin: const EdgeInsets.only(right: 4.0),
                    child: const Text("Playlist")
                ),
                Container(
                  alignment: Alignment.center,
                  width: 30,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: const Text(
                    "17",
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 50,
          margin: const EdgeInsets.only(top: 16.0),
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
              children: const [
                Text("Description"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}