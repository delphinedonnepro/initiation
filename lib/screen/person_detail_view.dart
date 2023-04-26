import 'package:flutter/material.dart';
import 'package:initiation/model/person.dart';

class PersonDetailView extends StatelessWidget {
  const PersonDetailView({super.key, required this.listPerson});

  final List<Person> listPerson;


  @override
  Widget build(BuildContext context) {

    final List<Person> family = [];

    final Person paul = Person(nom: "Martin", prenom: "Paul", age: 5);
    final Person lea = Person(nom: "Martin", prenom: "Léa", age: 10);
    final Person david = Person(nom: "Martin", prenom: "David", age: 39);
    final Person caroline = Person(nom: "Dupont", prenom: "Caroline", age: 35);
    final Person sarah = Person(nom: "Dupont", prenom: "Sarah", age: 35);
    final Person rex = Person(nom: "Martin-Dupont", prenom: "Rex", age: 2);

    family.add(paul);
    family.add(lea);
    family.add(david);
    family.add(caroline);
    family.add(sarah);
    family.add(rex);

    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: listPerson.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Card(
                    elevation: 10,
                    child: ListTile(
                      trailing:  Card(
                        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        elevation: 10,
                          child: Image.asset('assets/images/caroline.jpg', fit: BoxFit.contain)),
                      title: Text('${listPerson[index].nom} ${listPerson[index].prenom}'),
                      subtitle: Text("age : ${listPerson[index].age}"),
                    ),
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 20),
          const Divider(thickness: 1.0),
          ListView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: family.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Card(
                    elevation: 10,
                    child: ListTile(
                      trailing:  Card(
                          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          elevation: 10,
                          child: Image.asset('assets/images/caroline.jpg', fit: BoxFit.contain)),
                      title: Text('${family[index].nom} ${family[index].prenom}'),
                      subtitle: Text("age : ${family[index].age}"),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
