import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:task_ui_2/data/user.dart';

class ItemUserRoundWidget extends StatelessWidget {
  final User user;

  const ItemUserRoundWidget({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100.0),
          child: Image.asset(
            user.pathImage,
            width: 50.0,
            height: 10.0,
            fit: BoxFit.fill,
          ),
        ));
  }
}
