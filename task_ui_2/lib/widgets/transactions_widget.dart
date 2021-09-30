import 'package:flutter/cupertino.dart';
import 'package:task_ui_2/data/user.dart';
import 'package:task_ui_2/widgets/item_transactions.dart';

class TransactionsWidget extends StatelessWidget{
  const TransactionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context, int index){
      return ItemTransactionsWidget(user: users[index],);
    },
    );
  }
}