import 'package:block_learn/blog/user_event.dart';
import 'package:block_learn/blog/user_state.dart';
import 'package:block_learn/models/popular.dart';
import 'package:block_learn/services/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBloc extends Bloc<UserEvent,UserState>{
  final UserRepository userRepository;

  UserBloc(this.userRepository) : super(UserEmptyState());

    @override
    Stream<UserState> mapEventToState(UserEvent event) async*{
      if(event is UserLoadEvent){
        yield UserLoadingState();
        try{
          // final dynamic popularsResponse = await userRepository.getAllUsers();
          final dynamic popularResponse = await userRepository.getAllUsers();
          final result = Popular.fromJson(popularResponse.data).results;
          print(result);

          yield UserLoadedState(
              results: result
          );
        }catch(e){
          yield UserEmptyState();
          print('ошибка');
        }
      } else if(event is USerClearEvent){
        yield UserEmptyState();
      }
    }
  }