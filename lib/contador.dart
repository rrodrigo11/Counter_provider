import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Contador with ChangeNotifier{
  
  int _count = 0 ;
  int get count => _count;
  int _selectedColor = 0;

  List<Color> lista = 
  [
    Colors.black87,
    Colors.red,
    Colors.blue, 
    Colors.green
  ];

  Color get color => lista[_selectedColor];

  void increment(){
    _count++;
    notifyListeners();
  }

  void decrement(){
    _count--;
    notifyListeners();
  }

  void reset(){
    _count = 0;
    notifyListeners();
  }

  void getcolor(int color){
    _selectedColor = color;
    notifyListeners();
  }
}