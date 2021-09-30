import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:task_ui_2/widgets/bar_chart.dart';
import 'package:task_ui_2/widgets/transactions_widget.dart';

class TwoPage extends StatelessWidget {
  const TwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              leading: const Icon(Ionicons.ios_arrow_back),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total balance",
                    style: TextStyle(fontSize: 12, color: Colors.grey[800]),
                  ),
                  const Text(
                    '2 264,84',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ],
              ),
              actions: [
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10.0)),
                  padding: EdgeInsets.all(2.0),
                  margin: EdgeInsets.only(right: 16.0, top: 8.0),
                  child: Row(
                    children: const <Widget>[
                      Text(
                        "Visa",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        '... 7628',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            body: Column(
              children: [
                // SizedBox(
                // height: 180,
                const SingleChildScrollView(
                    child: SizedBox(
                  height: 250,
                  width: 300,
                  child: BarChartT(),
                )),
                // ),
                SizedBox(
                  height: 50,
                  child: AppBar(
                    bottom: const TabBar(
                      tabs: [
                        Tab(
                          text: "Income",
                        ),
                        Tab(
                          text: "Outcome",
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 240,
                  child: TabBarView(
                    children: [
                      TransactionsWidget(),
                      TransactionsWidget(),
                    ],
                  ),
                )
              ],
            )));
  }
}