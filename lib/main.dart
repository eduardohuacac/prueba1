import 'package:flutter/material.dart';
import 'package:prueba1/view/counter_view.dart';
import 'package:provider/provider.dart';
import 'package:prueba1/viewmodel/counter_viewmodel.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterViewmodel(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CounterView());
  }
}
