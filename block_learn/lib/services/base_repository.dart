import 'package:block_learn/app/service_locator.dart';
import 'package:block_learn/services/api_client.dart';
import 'package:dio/dio.dart';

abstract class BaseRepository{
  ApiClient client;

  BaseRepository(){
    client = ServiceLocator.get<ApiClient>();
  }
}