import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ui/widget/main_widget/styled_button.dart';

class TypeCourseWidget extends StatefulWidget{
  const TypeCourseWidget({Key? key}) : super(key: key);

  @override
  _TypeCourseState createState() => _TypeCourseState();
}

class _TypeCourseState extends State<TypeCourseWidget>{
  bool _allTopicPressed = false;
  bool _newestPressed = false;
  bool _popularPressed = false;
  bool _advancePressed = false;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 8.0, top: 16.0, bottom: 16.0),
          child: const Text(
            "Courses",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: _allTopicPressed ? Colors.blue : Colors.white,
                      border: Border.all(
                        color: Colors.blue,
                      )
                  ),
                  margin: const EdgeInsets.all(8.0),
                  child: StyledButton(label: 'AllTopic',
                    icon: Icons.local_fire_department_sharp,
                    borderColor: Colors.blue,
                    onPress: () {
                    setState(() {
                      _allTopicPressed = !_allTopicPressed;
                    });
                    },
                  )
                )
            ),
            Expanded(
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: _popularPressed ? Colors.orange : Colors.white,
                    border: Border.all(
                        color: Colors.orange,
                        width: 2
                    )
                ),
                margin: const EdgeInsets.all(8.0),
                child: StyledButton(
                  label: 'Popular',
                  icon: Icons.flash_on_rounded,
                  onPress: (){
                    setState(() {
                      _popularPressed = !_popularPressed;
                    });
                  }, borderColor: Colors.orange,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: _newestPressed ? Colors.purple : Colors.white,
                      border: Border.all(
                          color: Colors.purple,
                          width: 2
                      )
                  ),
                  margin: const EdgeInsets.all(8.0),
                  child: StyledButton(
                    label: 'Newest',
                    icon: Icons.star_border_sharp,
                    onPress: (){
                      setState(() {
                        _newestPressed = !_newestPressed;
                      });
                    }, borderColor: Colors.purple,
                  ),
                )),
            Expanded(
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: _advancePressed ? Colors.green : Colors.white,
                    border: Border.all(
                        color: Colors.green,
                        width: 2
                    )
                ),
                margin: const EdgeInsets.all(8.0),
                child: StyledButton(
                  label: 'Advance',
                  icon: Icons.save,
                  onPress: (){
                    setState(() {
                      _advancePressed = !_advancePressed;
                    });
                  }, borderColor: Colors.green,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}