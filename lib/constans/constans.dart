import 'package:flutter/material.dart';

class Constans {
  // use static to can acsse it with out obj from class
  static TextStyle style1 = const TextStyle(fontSize: 20, color: Colors.white);
  static TextStyle btnTxtStyle =
      const TextStyle(fontSize: 25, color: Colors.black);
  static Alignment txtAlignment = Alignment.centerRight;
  static EdgeInsets txtMargin = const EdgeInsets.only(right: 16);
}
