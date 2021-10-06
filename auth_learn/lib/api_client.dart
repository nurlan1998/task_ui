
import 'dart:convert';

import 'package:auth_learn/constants.dart';
import 'package:http/http.dart';

class ApiClient{
  final Client _client;

  ApiClient(this._client);

  dynamic get(String path, {Map<String, dynamic>? params}) async{
    await Future.delayed(Duration(milliseconds: 500));
    final response = await _client.get(
      getPath(path,params),
      headers: {
        'ContentType': 'application/json',
      },
    );

    if(response.statusCode == 200){
      return json.decode(response.body);
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  dynamic post(String path, {Map<dynamic,dynamic>? params}) async{
    final response = await _client.post(
      getPath(path, null),
      body: jsonEncode(params),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    if(response.statusCode == 200){
      return json.decode(response.body);
    }else if(response.statusCode == 401){
      print("ошибка 401");
    }else{
      throw Exception(response.reasonPhrase);
    }
  }

  Uri getPath(String path, Map<String,dynamic>? params){
    var paramsString = '';
    if(params?.isNotEmpty ?? false){
      params?.forEach((key, value) {
        paramsString += '&$key=$value';
      });
    }

    return Uri.parse(
      '${ApiConstants.BASE_URL}$path?api_key=${ApiConstants.API_KEY}$paramsString');
  }
}