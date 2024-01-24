import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc_network_example/bloc/user_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state is UserEmptyState) {
          return const Center(
            child: Text(
              'No data received, press button "Load',
              style: TextStyle(fontSize: 20),
            ),
          );
        }
        if (state is UserLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is UserLoadedState) {
          return ListView.builder(
            itemCount: state.loadedUsers.length,
            itemBuilder: (context, index) => Container(
              color: index % 2 == 0
                  ? Color.fromARGB(255, 238, 198, 198)
                  : Color.fromARGB(255, 185, 136, 116),
              child: ListTile(
                leading: Text(
                  'ID: ${state.loadedUsers[index].id}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                title: Column(children: [
                  Text(
                    "${state.loadedUsers[index].name}",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${state.loadedUsers[index].username}",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Email:${state.loadedUsers[index].email}',
                        style: const TextStyle(fontStyle: FontStyle.italic),
                      ),
                      Text(
                        'Phone: ${state.loadedUsers[index].phone}',
                        style: const TextStyle(fontStyle: FontStyle.italic),
                      ),
                      // Text(
                      //   'City:${state.loadedUsers[index].city}',
                      //   style: const TextStyle(fontStyle: FontStyle.italic),
                      // ),
                      // Text(
                      //   'Adress:${state.loadedUsers[index].address}',
                      //   style: const TextStyle(fontStyle: FontStyle.italic),
                      // ),
                    ],
                  )
                ]),
              ),
            ),
          );
        }

        return const SizedBox();
      },
    );
  }
}
