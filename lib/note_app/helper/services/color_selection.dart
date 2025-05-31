import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamentals/note_app/helper/constants.dart';

class ColorSelection extends Cubit<int> {
  ColorSelection() : super(Random().nextInt(colors.length));
  void onTap(int index) {
    emit(index);
  }

  Color getColor(int index) {
    return state == index ? kDefaultColor : kDefaultColor.withValues(alpha: .2);
  }
}
