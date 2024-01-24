part of 'user_bloc.dart';

abstract class UserState {}

final class UserInitial extends UserState {}

class UserLoadingState extends UserState {}

class UserEmptyState extends UserState {}

class UserLoadedState extends UserState {
  List<dynamic> loadedUsers;
  UserLoadedState({required this.loadedUsers});
}

class UserErrorState extends UserState {}
