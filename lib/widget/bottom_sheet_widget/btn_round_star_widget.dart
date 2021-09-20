import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BtnRoundStarWidget extends StatelessWidget{
  final String label;

  const BtnRoundStarWidget({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.orange,
          border:
          Border.all(color: Colors.orange, width: 4)),
      child: Row(
        children: [
          Text(label),
          const Icon(Icons.star_border)
        ],
      ),
    );
  }
}