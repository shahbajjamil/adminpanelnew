import 'package:adminpanel/constants.dart';
import 'package:adminpanel/panel_center/line_grap.dart';
import 'package:flutter/material.dart';

class Person {
  String name;
  Color color;
  Person({required this.name, required this.color});
}

class PanelCenterPage extends StatefulWidget {
  const PanelCenterPage({Key? key}) : super(key: key);

  @override
  _PanelCenterPageState createState() => _PanelCenterPageState();
}

class _PanelCenterPageState extends State<PanelCenterPage> {
  List<Person> _persons = [
    Person(name: "Shahbaj Jamil", color: Constants.orangeLight),
    Person(name: "Fariha Odlina", color: Constants.redLight),
    Person(name: "viola Willis", color: Constants.blueLight),
    Person(name: "Emmett Forrest", color: Constants.orangeLight),
    Person(name: "Nick Jarvis", color: Constants.greenLight),
    Person(name: "Amit Claveia", color: Constants.orangeLight),
    Person(name: "Amalie Howardeia", color: Constants.redLight),
    Person(name: "Campbell Britton", color: Constants.blueLight),
    Person(name: "haley Mellor", color: Constants.redLight),
    Person(name: "Harlen Higgins", color: Constants.greenLight),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: Constants.kPadding / 2,
                  right: Constants.kPadding / 2,
                  top: Constants.kPadding / 2),
              child: Card(
                color: Constants.purpleLight,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Container(
                  width: double.infinity,
                  child: const ListTile(
                    title: Text(
                      "Products Available",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      "18% of Products Avail",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    trailing: Chip(
                      label: Text(
                        "20,500",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            BarChartSample2(),
            Padding(
              padding: const EdgeInsets.only(
                  left: Constants.kPadding / 2,
                  right: Constants.kPadding / 2,
                  bottom: Constants.kPadding,
                  top: Constants.kPadding),
              child: Card(
                color: Constants.purpleLight,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: List.generate(
                    _persons.length,
                    (index) => ListTile(
                      leading: CircleAvatar(
                        radius: 15,
                        child: Text(
                          _persons[index].name.substring(0, 1),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        backgroundColor: _persons[index].color,
                      ),
                      title: Text(
                        _persons[index].name,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.message,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
