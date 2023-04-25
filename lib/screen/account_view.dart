import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key, required this.title});

  final String title;

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
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
    final codeUnits = List.generate(20, (index) {
      return rand.nextInt(26) + 65;
    });

    return String.fromCharCodes(codeUnits);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Text(widget.title),
            FutureBuilder(
                future: addCodeStorage(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    const SizedBox.shrink();
                  }
                  return snapshot.hasData
                      ? Center(child: Text(snapshot.data!))
                      : const Text("oups...impossible de récupérer le code");
                })
          ],
        ),
      ),
    );
  }
}
