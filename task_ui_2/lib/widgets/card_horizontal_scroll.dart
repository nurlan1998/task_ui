import 'package:flutter/cupertino.dart';
import 'package:task_ui_2/data/user.dart';
import 'package:task_ui_2/widgets/item_card.dart';

class CardHorizontalScrollWidget extends StatefulWidget{
  const CardHorizontalScrollWidget({Key? key}) : super(key: key);

  @override
  _CardHorizontalScrollState createState() => _CardHorizontalScrollState();
}

class _CardHorizontalScrollState extends State<CardHorizontalScrollWidget>{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16.0,right: 16.0),
      width: 400,
      height: 150,
      child: ListView.builder(
        itemCount: users.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return ItemCard(user: users[index],);
        },
      ),
    );
  }
}