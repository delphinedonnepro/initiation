import 'package:flutter/material.dart';
import 'package:initiation/model/person.dart';

class PersonDetailView extends StatelessWidget {
  const PersonDetailView({super.key, required this.listPerson});

  final List<Person> listPerson;


  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: [
          // Todo ajout de la liste de personne ou autre
        ],
      ),
    );
  }
}
