import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc_network_example/bloc/user_bloc.dart';
import 'package:flutter_application_1/bloc_network_example/services/user_repository.dart';
import 'package:flutter_application_1/bloc_network_example/widgets/action_buttons.dart';
import 'package:flutter_application_1/bloc_network_example/widgets/user_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final usersRepository = UsersRepository();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBloc>(
      create: (context) => UserBloc(usersRepository: usersRepository),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text("Users List"),
          centerTitle: true,
        ),
        body:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ActionButtons(),
            Expanded(child: UserList()),
          ],
        ),
      ),
    );
  }
}
