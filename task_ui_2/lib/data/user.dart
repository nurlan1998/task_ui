import 'package:flutter/cupertino.dart';

class User{
  final String? title;
  final String? cardId;
  final Image imageUser;

  User({this.title,this.cardId,required this.imageUser,});
}

List<User> users = [
  User(title: 'Nicholas',cardId: '..7628',imageUser: Image(image: AssetImage("assets/profile-1.jpg"))),
  User(title: 'Leonardo',cardId: '..5638',imageUser: Image(image: AssetImage("assets/profile-3.jpg"))),
  User(title: 'Flutter',cardId: '..6627',imageUser: Image(image: AssetImage("assets/profile-4.jpg"))),
  User(title: 'Flutter',cardId: '..6627',imageUser: Image(image: AssetImage("assets/profile-5.jpg"))),
  User(title: 'Flutter',cardId: '..6627',imageUser: Image(image: AssetImage("assets/profile-1.jpg"))),
  User(title: 'Flutter',cardId: '..6627',imageUser: Image(image: AssetImage("assets/profile-2.jpg"))),
  User(title: 'Flutter',cardId: '..6627',imageUser: Image(image: AssetImage("assets/profile-3.jpg"))),
  User(title: 'Flutter',cardId: '..6627',imageUser: Image(image: AssetImage("assets/profile-4.jpg"))),
  User(title: 'Flutter',cardId: '..6627',imageUser: Image(image: AssetImage("assets/profile-5.jpg"))),
];