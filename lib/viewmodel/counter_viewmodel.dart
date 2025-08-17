import 'package:flutter/material.dart';
import '../model/counter_model.dart';

class CounterViewmodel extends ChangeNotifier {
  // guardar estado actual
  final CounterModel model = CounterModel(0);

  // exponer los datos a la vista
  int get count => model.counter;

  // función para incrementar
  void increment() {
    model.counter++;
    notifyListeners();
  }

  // función para decrementar
  void decrement() {
    model.counter--;
    notifyListeners();
  }

  // función para reiniciar
  void restart() {
    model.counter = 0;
    notifyListeners();
  }
}
