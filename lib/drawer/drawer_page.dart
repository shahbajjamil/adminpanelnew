import 'package:adminpanel/constants.dart';
import 'package:adminpanel/responsve_layout.dart';
import 'package:flutter/material.dart';

class Drawerpage extends StatefulWidget {
  const Drawerpage({Key? key}) : super(key: key);

  @override
  _DrawerpageState createState() => _DrawerpageState();
}

class ButtonsInfo {
  String title;
  IconData icon;

  ButtonsInfo({
    required this.title,
    required this.icon,
  });
}

int _currrentIndex = 0;

List<ButtonsInfo> _buttonsNames = [
  ButtonsInfo(title: "Home", icon: Icons.home),
  ButtonsInfo(title: "Setting", icon: Icons.settings),
  ButtonsInfo(title: "Notifications", icon: Icons.notifications),
  ButtonsInfo(title: "Contacts", icon: Icons.contact_phone_rounded),
  ButtonsInfo(title: "Sales", icon: Icons.sell),
  ButtonsInfo(title: "Marketing", icon: Icons.mark_email_read),
  ButtonsInfo(title: "Security", icon: Icons.verified_user),
  ButtonsInfo(title: "Users", icon: Icons.supervised_user_circle_rounded),
];

class _DrawerpageState extends State<Drawerpage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Constants.kPadding),
          child: Column(
            children: [
              ListTile(
                title: const Text(
                  "Admin Menu",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: ResponsiveLayout.isComputer(context)
                    ? null
                    : IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                        )),
              ),
              ...List.generate(
                _buttonsNames.length,
                (index) => Column(
                  children: [
                    Container(
                      decoration: index == _currrentIndex
                          ? BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(colors: [
                                Constants.redDark.withOpacity(0.9),
                                Constants.orangeDark.withOpacity(0.9),
                              ]))
                          : null,
                      child: ListTile(
                        title: Text(
                          _buttonsNames[index].title,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        leading: Padding(
                          padding: const EdgeInsets.all(Constants.kPadding),
                          child: Icon(
                            _buttonsNames[index].icon,
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _currrentIndex = index;
                          });
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    const Divider(
                      color: Colors.white,
                      thickness: 0.1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
