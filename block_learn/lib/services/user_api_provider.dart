import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:block_learn/models/user.dart';
import 'package:dio/dio.dart';

class UserProvider{
  Dio dio;

  //получения данных с сайта themoviedb с помощъю dio
  Future<dynamic> getMoviesPopular() async{
    try{
      dio = Dio();
      final response = await dio.get('https://api.themoviedb.org/3/movie/popular?api_key=7d6c3c25fa66a886b27c1c4437b07c16&language=en-US&page=2');
      return response;
    }on DioError catch(e){
      print(e);
    }
  }

  //получения данных с сайта jsonplacholder с помощъю dio
  Future<List<User>> getUserWithDio() async {
    try{
      dio = Dio();
      Response response = await dio.get('https://jsonplaceholder.typicode.com/users');
      List<dynamic> users = (response.data as List).map((e) => User.fromJson(e)).toList();
      print(users);
      return users;
    } on DioError catch(e){
      print(e);
    }
  }

  //получения данных с сайта jsonplacholder с помощъю http
  Future<List<User>> getUserWithHttp() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if(response.statusCode == 200){
      final List<dynamic> userJson = json.decode(response.body);
      return userJson.map((json) => User.fromJson(json)).toList();
    }else {
      throw Exception('Error fetching users');
    }
  }
}