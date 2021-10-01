import 'package:adminpanel/Panel_left/panel_left_page.dart';
import 'package:adminpanel/app_bar/app_bar_widget.dart';
import 'package:adminpanel/drawer/drawer_page.dart';
import 'package:adminpanel/panel%20_right/panel_right_page.dart';
import 'package:adminpanel/panel_center/panel_center_page.dart';
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
            :const AppBarWidget(),
        preferredSize: const Size(double.infinity, 100),
      ),
      body: ResponsiveLayout(
        tiny: Container(),
        phone: const PanelCenterPage(),
        tablet: Row(
          children: const [
            Expanded(child: PanelLeftPage()),
            Expanded(child: PanelCenterPage()),
          ],
        ),
        largetTablet: Row(
          children: const [
            Expanded(child: PanelLeftPage()),
            Expanded(child: PanelCenterPage()),
            Expanded(child: PanelRightPage()),
          ],
        ),
        computer: Row(
          children: const [
            Expanded(child: Drawerpage()),
            Expanded(child: PanelLeftPage()),
            Expanded(child: PanelCenterPage()),
            Expanded(child: PanelRightPage()),
          ],
        ),
      ),
      drawer: const Drawerpage(),
    );
  }
}
