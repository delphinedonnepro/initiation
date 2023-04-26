import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:initiation/model/storage_item.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key, required this.title});

  final String title;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  //AndroidOptions _getAndroidOptions() => const AndroidOptions(encryptedSharedPreferences: true);
  //IOSOptions getIOSOptions() => const IOSOptions(accessibility: KeychainAccessibility.unlocked);
  final _storage = const FlutterSecureStorage(aOptions: AndroidOptions(encryptedSharedPreferences: true));

  Future<String?> addCodeStorage() async {
    await _storage.write(key: "token", value: _randomValue());
    final monCode = await _storage.read(key: "token");
    return monCode;
  }

  Future<List<dynamic>> readAllCodeStorage() async {
    final all = await _storage.readAll();
    return all.entries.map((entry) => StorageItem(key: entry.key, value: entry.value)).toList();
  }

  Future<String?> deleteCodeStorage() async {
    await _storage.delete(key: "token");
    final monCode = await _storage.read(key: "token");
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
      child: Column(
        children: [
          Text(widget.title),
          const SizedBox(),
          ElevatedButton(
            onPressed: () {
              addCodeStorage();
            },
            child: const Text("add token"),
          ),
          ElevatedButton(
            onPressed: () {
              addCodeStorage();
            },
            child: const Text("delete token"),
          ),
          const SizedBox(height: 20),
          const Text('Ajout dans le storage'),
          FutureBuilder(
            future: addCodeStorage(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                const SizedBox.shrink();
              }
              return snapshot.hasData
                  ? Center(child: Text(snapshot.data!))
                  : const Text("oups...impossible de récupérer le code");
            },
          )
        ],
      ),
    );
  }
}
