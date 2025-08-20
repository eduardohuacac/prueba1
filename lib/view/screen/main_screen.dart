import 'package:prueba1/view/counter_view.dart';
import 'package:prueba1/view/counter_view_two.dart';
import 'package:flutter/material.dart';
import 'package:prueba1/model/counter_model.dart';
import 'package:prueba1/view/counter_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final screens = [const CounterView(), const CounterViewTwo()];

    return Scaffold(
      body: IndexedStack(index: selectedIndex, children: screens),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.two_wheeler),
            activeIcon: const Icon(Icons.motorcycle),
            label: 'Motors',
            backgroundColor: colors.primary,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person_3_outlined),
            activeIcon: const Icon(Icons.person_3),
            label: 'Users',
            backgroundColor: colors.tertiary,
          ),
        ],
      ),
    );
  }
}
