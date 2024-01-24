

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ColorEvent { event_blue, event_green }

class ColorBloc extends Bloc<ColorEvent, Color> {
  ColorBloc() : super(Colors.blue) {
    on<ColorEvent>((event, emit) {
      if (event == ColorEvent.event_blue) {
        emit(Colors.blue);
      } else if (event == ColorEvent.event_green) {
        emit(Colors.green);
      }
    });
  }
}
