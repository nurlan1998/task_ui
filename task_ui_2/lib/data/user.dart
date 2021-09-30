import 'package:flutter/cupertino.dart';

class User {
  final String? title;
  final String? cardId;
  final String pathImage;
  final String? pathIcon;
  final Color typeColor;

  User({
    this.title,
    this.cardId,
    this.pathIcon,
    required this.typeColor,
    required this.pathImage,
  });
}

List<User> users = [
  User(
    title: 'Nicholas',
    cardId: '..7628',
    typeColor: const Color(0xFF00ACC1),
    pathIcon: 'assets/master.png',
    pathImage: 'assets/profile-1.jpg',
  ),
  User(
    title: 'Leonardo',
    cardId: '..5638',
    pathIcon: 'assets/visa.png',
    typeColor: const Color(0xFF26A69A),
    pathImage: 'assets/profile-2.jpg',
  ),
  User(
    title: 'Flutter',
    cardId: '..6627',
    pathIcon: 'assets/master.png',
    typeColor: const Color(0xFFC6FF00),
    pathImage: 'assets/profile-3.jpg',
  ),
  User(
    title: 'Flutter',
    cardId: '..6627',
    pathIcon: 'assets/master.png',
    typeColor: const Color(0xFF43A047),
    pathImage: 'assets/profile-2.jpg',
  ),
  User(
      title: 'Mike',
      cardId: '..6627',
      pathIcon: 'assets/visa.png',
      typeColor: const Color(0xFF00ACC1),
      pathImage: 'assets/profile-5.jpg'),
  User(
    title: 'Flutter',
    cardId: '..6627',
    pathIcon: 'assets/visa.png',
    pathImage: 'assets/profile-1.jpg',
    typeColor: const Color(0xFF26A69A),
  ),
  User(
    title: 'Flutter',
    cardId: '..6627',
    pathIcon: 'assets/master.png',
    typeColor: const Color(0xFF00ACC1),
    pathImage: 'assets/profile-3.jpg',
  ),
  User(
    title: 'Flutter',
    cardId: '..6627',
    pathIcon: 'assets/visa.png',
    typeColor: const Color(0xFF26A69A),
    pathImage: 'assets/profile-4.jpg',
  ),
  User(
    title: 'Flutter',
    cardId: '..6627',
    pathIcon: 'assets/master.png',
    typeColor: const Color(0xFF00ACC1),
    pathImage: 'assets/profile-2.jpg',
  ),
];
