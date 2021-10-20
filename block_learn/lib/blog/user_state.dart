import 'package:block_learn/models/popular.dart';
import 'package:equatable/equatable.dart';

abstract class UserState extends Equatable{}

class UserEmptyState extends UserState{
  @override
  List<Object> get props => throw UnimplementedError();
}

class UserLoadingState extends UserState{
  @override
  List<Object> get props => throw UnimplementedError();
}

class UserLoadedState extends UserState{
  final List<Results> results;

  UserLoadedState({this.results});

  UserLoadedState copyWith({
  List<Results> results
}){
    return UserLoadedState(
      results: results ?? this.results
    );
  }
  @override
  List<Object> get props => [results];
}

class UserErrorState extends UserState{
  @override
  List<Object> get props => throw UnimplementedError();
}