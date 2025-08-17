import 'package:flutter/material.dart';
import 'package:prueba1/viewmodel/counter_viewmodel.dart';
import 'package:provider/provider.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final counterViewModel = Provider.of<CounterViewmodel>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Contador con MVVM')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Contador: ${counterViewModel.count}"),
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
    );
  }
}
