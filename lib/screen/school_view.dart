import 'package:flutter/material.dart';

class SchoolView extends StatelessWidget {
  const SchoolView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Card(
            child: Image.asset('assets/images/ekod.jpg'),
          ),
          const SizedBox(height: 20),
          const ListTile(
              title: Text(
            "Actualités",
            style: TextStyle(color: Colors.black, fontSize: 25),
            textAlign: TextAlign.start,
          )),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(
                  elevation: 10,
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 280,
                  ),
                ),
                Card(
                  elevation: 10,
                  child: Image.asset(
                    'assets/images/actualite1.png',
                    width: 230,
                  ),
                ),
                Card(
                  elevation: 10,
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 280,
                  ),
                ),
                Card(
                  elevation: 10,
                  child: Image.asset(
                    'assets/images/certif.png',
                    width: 230,
                  ),
                ),
                Card(
                  elevation: 10,
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 280,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const ListTile(
              title: Text(
                "Contact",
                style: TextStyle(color: Colors.black, fontSize: 25),
                textAlign: TextAlign.start,
              )),
          const SizedBox(height: 20),
          Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("185 Rue Henri Champion, 72100 Le Mans"),
                    Text("02 43 21 00 24"),
                    Text("Horaires"),
                  ],
                ),
                subtitle: const Text("9h - 12h / 14h - 17h"),
              ),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
