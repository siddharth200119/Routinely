import 'package:flutter/material.dart';

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
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.task_alt_rounded),
          label: "Tasks",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time),
          label: "Routines",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        )
      ],
      selectedItemColor: Colors.green,
      iconSize: 30,
      elevation: 5,
      unselectedItemColor: Colors.blue,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}
