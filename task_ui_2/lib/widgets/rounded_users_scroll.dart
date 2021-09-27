import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ui_2/data/user.dart';
import 'package:task_ui_2/widgets/item_users_round.dart';

class UsersHorizontalScrollWidget extends StatelessWidget {
  const UsersHorizontalScrollWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
        margin: EdgeInsets.all(8.0),
        width: 400,
        height: 64,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) =>
              ItemUserRoundWidget(user: users[index],),
        ),
    );
  }
}
