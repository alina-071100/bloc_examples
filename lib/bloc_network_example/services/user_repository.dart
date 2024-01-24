import 'package:flutter_application_1/bloc_network_example/models/user.dart';
import 'package:flutter_application_1/bloc_network_example/services/user_provider.dart';

class UsersRepository {
   UserProvider userProvider = UserProvider();
  Future<List<User>> getAllUsers() => userProvider.getUser();
}
