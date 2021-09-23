import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ui/widget/bottom_sheet_widget/bottom_sheet_widget.dart';

//кнопки внизу скролла второй страницы
class BtnPriceWidget extends StatefulWidget {
  const BtnPriceWidget({Key? key}) : super(key: key);

  @override
  _BtnPriceState createState() => _BtnPriceState();
}

class _BtnPriceState extends State<BtnPriceWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        child: Card(
          // margin: EdgeInsets.only(left: 16.0,right: 16.0),
          elevation: 128.0,
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.orangeAccent,
                    border: Border.all(color: Colors.orange, width: 2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.cached_sharp),
                    Text("32.52")
                  ],
                ),
              )),
              Expanded(
                  flex: 2,
                  child: Container(
                    height: 64,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blue,
                        border: Border.all(color: Colors.blue, width: 2)),
                    child: TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                            elevation: 128,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(32.0),
                                  topLeft: Radius.circular(32.0)),
                            ),
                            backgroundColor: Colors.white,
                            context: context,
                            builder: (context) {
                              return const BottomSheetWidget();
                            });
                        setState(() {});
                      },
                      child: const Text(
                        "Buy now",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ))
            ],
          ),
        ));
  }
}