import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloC_with_flutter_bloc/bloc/color_bloc.dart';
import 'package:flutter_application_1/bloc_network_example/pages/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const  MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<ColorBloc>(
        create: (context) => ColorBloc(),
        child:  HomePage(),
      ),
    );
  }
}
