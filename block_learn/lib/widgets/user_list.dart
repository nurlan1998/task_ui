import 'package:block_learn/blog/user_bloc.dart';
import 'package:block_learn/blog/user_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc,UserState>(
      builder: (context,state) {
        if(state is UserEmptyState){
          return Center(
            child: Text(
              'No data received. Press button "Load"',
              style: TextStyle(fontSize: 20.0),
            ),
          );
        }

        if(state is UserLoadingState){
          return Center(child: CircularProgressIndicator(),);
        }

        if(state is UserLoadedState){
          print(state.results);
          return ListView.builder(
            itemCount: state.results.length,
            itemBuilder: (context,index) => Container(
              margin: EdgeInsets.all(8.0),
              child: ListTile(
                  leading: Image.network(
                    'https://image.tmdb.org/t/p/w500/${state.results[index].backdropPath}',
                  ),
                  title: Column(
                    children: [
                      Text(
                  '${state.results[index].title}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
              ),
            ),
          );
        }

        if(state is UserEmptyState){
          return Center(
            child: Text(
              'Error fetching user'
            )
          );
        }
        return null;
      }
    );
  }
}