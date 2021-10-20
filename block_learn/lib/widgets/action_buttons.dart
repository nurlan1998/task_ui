import 'package:block_learn/blog/user_bloc.dart';
import 'package:block_learn/blog/user_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActionButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final UserBloc userBloc = BlocProvider.of<UserBloc>(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: (){
            userBloc.add(UserLoadEvent());
          },
          child: Text('Load'),
        ),
        SizedBox(width: 16.0,),
        ElevatedButton(
          onPressed: (){
            userBloc.add(USerClearEvent());
          },
          child: Text('Clear'),
        ),
      ],
    );
  }

}