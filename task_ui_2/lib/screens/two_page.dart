import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ui_2/widgets/transactions_widget.dart';

class TwoPage extends StatelessWidget {
  const TwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            // title: Text("sad"),
          ),
          body: Column(
            children: [
              SizedBox(
                  height: 180,
                  child: Container(
                  )
              ),
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
                      Container(
                        child: TransactionsWidget(),
                      ),
                      Center(
                        child: Text("asf"),
                      ),
                    ],
                  ),
              )
            ],
          )
    )
    );
  }
}