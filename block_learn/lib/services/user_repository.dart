import 'dart:convert';

import 'package:block_learn/services/user_api_provider.dart';

class UserRepository{
  UserProvider _userProvider = UserProvider();
  // Future<List<User>> getAllUsers() => _userProvider.getUserWithDio();

  Future<dynamic> getAllUsers() async {
    final response = await _userProvider.getMoviesPopular();
    return response;
  }
}