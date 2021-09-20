import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderImage extends StatelessWidget{
  const HeaderImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 32,right: 32.0,bottom: 8.0),
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
                      onPressed: () {}, child: const Icon(Icons.play_arrow)),
                ),
                const Text("06:25/17:45"),
                const Icon(Icons.surround_sound_outlined),
                const Icon(Icons.fullscreen),
              ],
            ),
          ],
        )
    );
  }
}