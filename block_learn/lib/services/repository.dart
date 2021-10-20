import 'package:block_learn/services/base_repository.dart';

class MoviesRepository extends BaseRepository{
  Future<dynamic> getPopular() async{
    return (await client.get('movie/popular?api_key=7d6c3c25fa66a886b27c1c4437b07c16&language=en-US&page=2'));
}
}