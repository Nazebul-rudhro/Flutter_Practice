import 'package:flutter/cupertino.dart';

class Provider_Data extends ChangeNotifier{
int _count = 0;
int get count => _count;
void increment(){
  _count++;
  notifyListeners();
}
void decrement(){
  _count--;
  notifyListeners();
}
}