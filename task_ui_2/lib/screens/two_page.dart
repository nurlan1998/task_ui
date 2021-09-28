import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
                // title: Text("sad"),
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
                Expanded(
                  child: TabBarView(
                    children: [
                      TransactionsWidget(),
                      const Center(
                        child: Text("asf"),
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
