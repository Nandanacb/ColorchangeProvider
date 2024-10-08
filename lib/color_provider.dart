import 'dart:math';

import'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier{
  Color _backgroundcolor=Colors.white;
  Color get bgcolor=>_backgroundcolor;

  void changeColor(){
    _backgroundcolor=Color(Random().nextInt(0Xffffffff));
    notifyListeners();
  }
}