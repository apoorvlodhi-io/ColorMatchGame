import 'dart:math';
import 'package:flutter/material.dart';

class UniqueColorGenerator {
  static Random random = Random();

  static Color getColor() {
    return Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
  }
}
