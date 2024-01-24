import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc_network_example/bloc/user_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActionButtons extends StatelessWidget {
   ActionButtons({super.key});

  
  @override
  Widget build(BuildContext context) {
    final UserBloc userBloc = BlocProvider.of<UserBloc>(context);
    
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          onPressed: () {
            userBloc.add(UserLoadEvent());
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.brown,
          ),
          child:const Text('Load'),
        ),
     const   SizedBox(
          width: 8,
        ),
        ElevatedButton(
          onPressed: () {
            userBloc.add(UserClearEvent());
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
          ),
          child:const Text(
            'Clean',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
