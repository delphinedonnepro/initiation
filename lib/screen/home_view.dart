import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'account_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    AccountView(
      title: "écran 1",
    ),
    AccountView(
      title: "écran 2",
    ),
    AccountView(
      title: "écran 3",
    ),
    AccountView(
      title: "écran 4",
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: 'Mon compte', backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Business'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
        ],
        currentIndex: _selectedIndex,
        //selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
