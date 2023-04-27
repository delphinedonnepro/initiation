import 'package:flutter/material.dart';
import 'package:initiation/model/person.dart';
import 'package:initiation/screen/home_view.dart';
import 'package:initiation/screen/person_detail_view.dart';
import 'package:initiation/screen/school_view.dart';

import 'account_view.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({super.key});

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  int _selectedIndex = 0;

  static List<Person> listPerson = [];

  List<Widget> widgetOptions = <Widget>[
    const HomeView(title: "Accueil"),
    PersonDetailView(listPerson: listPerson),
    const AccountView(),
    const SchoolView(),
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
        child: widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.red,
        showUnselectedLabels: true,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Personnes'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: 'Mon compte'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Ecole'),
        ],
        currentIndex: _selectedIndex,
        //selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
