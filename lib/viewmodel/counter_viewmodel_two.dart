import 'package:flutter/material.dart';
import '../model/counter_model.dart';

class CounterViewModelTwo extends ChangeNotifier {
  final CounterModel model = CounterModel(0);

  int get count => model.counter;

  void increment() {
    model.counter++;
    notifyListeners();
  }

  void decrement() {
    model.counter--;
    notifyListeners();
  }

  void reset() {
    model.counter = 0;
    notifyListeners();
  }
}
