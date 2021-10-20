import 'package:block_learn/services/api_client.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class ServiceLocator{
  static Future<void> setup() async {
    getIt.registerSingleton<ApiClient>(ApiClient.instance());
  }

  static T get<T>() {
    return getIt<T>();
  }
}