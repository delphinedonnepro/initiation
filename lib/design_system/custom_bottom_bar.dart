import 'package:flutter/material.dart';
import 'package:initiation/screen/account_view.dart';

class CustomBottomBar extends StatelessWidget{
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      clipBehavior: Clip.none,
      notchMargin: 5,
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute (
                  builder: (BuildContext context) => const AccountView(title: "ecran 1"),
                ),
              );
            },
            icon: const Icon(Icons.account_circle_outlined),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute (
                  builder: (BuildContext context) => const AccountView(title: "ecran 2"),
                ),
              );
            },
            icon: const Icon(Icons.list),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute (
                  builder: (BuildContext context) => const AccountView(title: "ecran 3"),
                ),
              );
            },
            icon: const Icon(Icons.home),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute (
                  builder: (BuildContext context) => const AccountView(title: "ecran 4"),
                ),
              );
            },
            icon: const Icon(Icons.school),
          )
        ],
      ),
    );
  }

}