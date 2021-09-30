import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ui_2/widgets/btn_savings_widget.dart';
import 'package:task_ui_2/widgets/btn_transfer_receive_widget.dart';

class BtnFilterWidget extends StatefulWidget {
  const BtnFilterWidget({Key? key}) : super(key: key);

  @override
  _BtnFilterState createState() => _BtnFilterState();
}

class _BtnFilterState extends State<BtnFilterWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            BtnTransferReceiveWidget(label: "Transfer"),
            BtnTransferReceiveWidget(label: "Receive"),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text('My Savings'),
              TextButton(
                onPressed: () {},
                child: const Text('See all'),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            BtnSavingsWidget(
              label: 'Super car \n 43,498/100,000',
              imageSavings: 'assets/cars.png',
            ),
            BtnSavingsWidget(
              label: 'Iphone 13 Pro \n 43,498/100,000',
              imageSavings: 'assets/phone.png',
            ),
          ],
        ),
      ],
    );
  }
}
