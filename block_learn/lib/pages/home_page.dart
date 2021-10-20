import 'package:block_learn/blog/user_bloc.dart';
import 'package:block_learn/services/repository.dart';
import 'package:block_learn/services/user_repository.dart';
import 'package:block_learn/widgets/action_buttons.dart';
import 'package:block_learn/widgets/user_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget{
  // final userRepository = UserRepository();
  final moviesRepository = MoviesRepository();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBloc>(
      create: (context) => UserBloc(moviesRepository),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('bloc'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ActionButton(),
            Expanded(child: UserList())
          ],
        ),
      ),
    );
  }
}