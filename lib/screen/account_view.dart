import 'package:flutter/material.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        children: [
          const ListTile(
            title: Text("Connexion"),
          ),
          const SizedBox(height: 15),
          TextFormField(),
          const SizedBox(height: 15),
          TextFormField(),
          const SizedBox(height: 35),
          ElevatedButton(onPressed: () {}, child: const Text('Me connecter')),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
