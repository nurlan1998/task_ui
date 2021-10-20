import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ui/widget/main_widget/styled_button.dart';
import 'btn_round_star_widget.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  _BottomSheetState createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheetWidget> {
  double _sliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Text("Price"),
            Container(
              child: Slider(
                value: _sliderValue,
                min: 0,
                max: 100,
                label: _sliderValue.round().toString(),
                onChanged: (value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 16.0),
              alignment: Alignment.topLeft,
              child: const Text(
                "Rating",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                BtnRoundStarWidget(label: "5"),
                BtnRoundStarWidget(label: "4"),
                BtnRoundStarWidget(label: "3"),
                BtnRoundStarWidget(label: "2"),
              ],
            ),
            Container(
                margin:
                    const EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Categories",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 4.0, bottom: 64.0),
                    height: 60,
                    width: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: Colors.blue,
                        )),
                    child: const StyledButton(
                      label: 'AllTopic',
                      icon: Icons.local_fire_department,
                      borderColor: Colors.blue,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60,
                    width: 20,
                    margin: const EdgeInsets.only(left: 4.0, bottom: 64.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: Colors.blue,
                        )),
                    child: const StyledButton(
                      label: 'Popular',
                      icon: Icons.flash_on_rounded,
                      borderColor: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
            // const BtnApplyWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 60,
                    margin: const EdgeInsets.only(right: 4.0),
                    child: const StyledButton(
                      label: 'Reset',
                      borderColor: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60,
                    margin: const EdgeInsets.only(left: 4.0),
                    child: const StyledButton(
                      label: 'Apply',
                      borderColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
