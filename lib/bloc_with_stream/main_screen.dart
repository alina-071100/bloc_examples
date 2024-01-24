// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/bloc_with_stream/bloc/color_bloc.dart';

// class MainScreen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   ColorBloc bloc = ColorBloc();

//   @override
//   void dispose() {
//     bloc.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("BloC with Stream"),
//         centerTitle: true,
//         backgroundColor: const Color.fromARGB(255, 35, 21, 37),
//       ),
//       body: Center(
//         child: StreamBuilder(
//           stream: bloc.outputStateStream,
//           initialData: Colors.deepPurple,
//           builder: (context, snapshot) {
//             return AnimatedContainer(
//               height: 300,
//               width: 300,
//               color: snapshot.data,
//               duration: Duration(milliseconds: 500),
//             );
//           },
//         ),
//       ),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           FloatingActionButton(
//             backgroundColor: Colors.deepPurple,
//             onPressed: () {
//               bloc.inputEventSink.add(ColorEvent.event_purple);
//             },
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           FloatingActionButton(
//               backgroundColor: Colors.pink,
//               onPressed: () {
//                 bloc.inputEventSink.add(ColorEvent.event_pink);
//               })
//         ],
//       ),
//     );
//   }
// }



// // animatedContainer arden stream builderi mej e vorn el arden blockneri potokin kheteve u erb ksxmen voreve guyni vra inq@ bloci mej kqce hamapatasxan event@ u bloc@ kkatare guyni popoxman gorcntac@ popoxelov guyn@ , heto stream builkder@ kstana nor state cherez snapshotic u  knkare datan nor tvyalnerov 