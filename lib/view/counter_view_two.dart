import 'package:flutter/material.dart';
import 'package:prueba1/viewmodel/counter_viewmodel.dart';
import 'package:provider/provider.dart';

// CounterViewTwo
class CounterViewTwo extends StatelessWidget {
  const CounterViewTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterViewmodel(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Contador Vista 2')),
        body: Consumer<CounterViewmodel>(
          builder: (context, counterViewModel, _) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Contador de personas: ${counterViewModel.count}"),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: counterViewModel.increment,
                      child: const Icon(Icons.add),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: counterViewModel.decrement,
                      child: const Icon(Icons.remove),
                    ),
                    ElevatedButton(
                      onPressed: counterViewModel.restart,
                      child: const Icon(Icons.refresh),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
