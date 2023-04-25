import 'package:flutter/material.dart';
import 'package:initiation/model/person.dart';

class PersonDetailView extends StatelessWidget {
  const PersonDetailView({super.key, required this.listPerson});

  final List<Person> listPerson;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: ListView.builder(
          itemCount: listPerson.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(listPerson[index].nom),
            );
          },
        ),
      ),
    );
  }
}
