// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/bloC_with_flutter_bloc/bloc/color_bloc.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: BlocProvider<ColorBloc>(
//         create: (context) => ColorBloc(),
//         child: const MyHomePage(),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     ColorBloc bloc = BlocProvider.of<ColorBloc>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('BolC with flutter_bloc'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: BlocBuilder<ColorBloc, Color>(
//           builder: (context, color) {
//             return AnimatedContainer(
//               height: 300,
//               width: 300,
//               color: color, // Use the color from the bloc's state
//               duration: const Duration(milliseconds: 500),
//             );
//           },
//         ),
//       ),
//       floatingActionButton:
//           Row(mainAxisAlignment: MainAxisAlignment.end, children: [
//         FloatingActionButton(
//             backgroundColor: Colors.blue,
//             onPressed: () {
//               bloc.add(ColorEvent.event_blue);
//             }),
//         const SizedBox(width: 10),
//         FloatingActionButton(
//             backgroundColor: Colors.green,
//             onPressed: () {
//               bloc.add(ColorEvent.event_green);
//             })
//       ]),
//     );
//   }
// }
