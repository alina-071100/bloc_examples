import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/bloc_network_example/models/user.dart';
import 'package:flutter_application_1/bloc_network_example/services/user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UsersRepository usersRepository;

  UserBloc({required this.usersRepository}) : super(UserEmptyState()) {
    on<UserLoadEvent>((event, emit) async {
      emit(UserLoadingState());
      try {
        final List<User> loadedUserList = await usersRepository.getAllUsers();
        emit(UserLoadedState(loadedUsers: loadedUserList));
      } catch (_) {
        emit(UserErrorState());
      }
    });
    on<UserClearEvent>((event, emit) {
      emit(UserEmptyState());
    });
  }
}
