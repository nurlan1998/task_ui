import 'package:block_learn/utils/config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class ApiClient{
  final Dio client;

  ApiClient._({
    @required this.client
});

  factory ApiClient.instance() {
    final baseOptions = BaseOptions(
      baseUrl: Config.apiBaseUrl
    );
    final dio = Dio(baseOptions);
    return ApiClient._(client: dio);
  }

  Future<dynamic> get(
      String url, {
        Map<String, dynamic> queryParameters,
      }) async {
    final response = await client.get(
      url,
      queryParameters: queryParameters,
    );
    return response;
  }
}