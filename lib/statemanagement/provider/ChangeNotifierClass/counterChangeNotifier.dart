import 'package:flutter/material.dart';

class CounterClass extends ChangeNotifier{
  int _count =0;

  int get count => _count;

  void increase(){
    _count++;
    notifyListeners();
  }
}