import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  Future<String?> addCodeStorage() async {
    AndroidOptions getAndroidOptions() => const AndroidOptions(
          encryptedSharedPreferences: true,
        );
    final storage = FlutterSecureStorage(aOptions: getAndroidOptions());
    await storage.write(key: "monCode", value: _randomValue());
    final monCode = await storage.read(key: "monCode");

    return monCode;
  }

  String _randomValue() {
    final rand = Random();
    final codeUnits = List.generate(50, (index) {
      return rand.nextInt(26) + 65;
    });

    return String.fromCharCodes(codeUnits);
  }

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
          ElevatedButton(onPressed: () {
            _randomValue();

          }, child: const Text('Me connecter')),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
