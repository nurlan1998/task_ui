import 'package:equatable/equatable.dart';

abstract class UserEvent extends Equatable{}

class UserLoadEvent extends UserEvent{
  @override
  List<Object> get props => throw UnimplementedError();
}

class USerClearEvent extends UserEvent{
  @override
  List<Object> get props => throw UnimplementedError();
}