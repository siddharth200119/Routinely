import 'package:flutter/material.dart';
import 'package:self_help/data/categories.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<StatefulWidget> createState() {
    return _BottomBarState();
  }
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: categories.map(
            (category) => BottomNavigationBarItem(
              icon: category.icon,
              label: category.label,
            ),
          ).toList(),
      selectedItemColor: Colors.green,
      iconSize: 30,
      elevation: 0,
      unselectedItemColor: const Color.fromARGB(255, 129, 125, 125),
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}
