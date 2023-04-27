import 'package:flutter/material.dart';

class SchoolView extends StatelessWidget {
  const SchoolView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          SizedBox(height: 20),
          ListTile(
              title: Text(
            "Actualités",
            style: TextStyle(color: Colors.black, fontSize: 25),
            // Todo ajout du style google font
            textAlign: TextAlign.start,
          )),
          // Todo ajout d'une image
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
