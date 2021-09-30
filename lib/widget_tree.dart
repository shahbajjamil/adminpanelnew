import 'package:adminpanel/drawer/drawer_page.dart';
import 'package:adminpanel/responsve_layout.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  _WidgetTreeState createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: (ResponsiveLayout.isTinyLimit(context) ||
                ResponsiveLayout.isTinyHeightLimit(context))
            ? Container()
            : AppBar(
                title: const Text("Widget 1 Tree"),
              ),
        preferredSize: const Size(double.infinity, 100),
      ),
      body: ResponsiveLayout(
        tiny: Container(),
        tablet: Container(),
        phone: Container(),
        largetTablet: Container(),
        computer: Container(),
      ),
      drawer: const Drawerpage(),
    );
  }
}
