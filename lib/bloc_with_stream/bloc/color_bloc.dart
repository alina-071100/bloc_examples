// import 'dart:async';

// import 'package:flutter/material.dart';

// enum ColorEvent { event_purple, event_pink }

// class ColorBloc {
//   Color color = Colors.deepPurple;

//   final inputEventController = StreamController<ColorEvent>();
//   StreamSink<ColorEvent> get inputEventSink => inputEventController
//       .sink; //sink@ streami jamanak vxodnoy patokn e vor@ kmtni streami mej u streamov durs guka

//   final outputStreamController = StreamController<Color>();
//   Stream<Color> get outputStateStream => outputStreamController.stream;

//   void mapEventToState(ColorEvent event) {
//     if (event == ColorEvent.event_purple)
//       color = Colors.deepPurple;
//     else if (event == ColorEvent.event_pink)
//       color = Colors.pink;
//     else
//       throw Exception("Wrong Event Type");

//     outputStreamController.sink.add(color);
//   }

//   ColorBloc() {
//     inputEventController.stream.listen(mapEventToState);
//   }
//   void dispose() {
//     inputEventController.close();
//     outputStreamController.close();
//   }
// }
