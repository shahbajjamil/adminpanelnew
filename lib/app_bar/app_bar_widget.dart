import 'dart:html';

import 'package:adminpanel/constants.dart';
import 'package:adminpanel/responsve_layout.dart';
import 'package:flutter/material.dart';

List<String> _buttonNames = ["overView", "Revenue", "Sales", "Control"];
int _currentSelectedButton = 0;

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Constants.purpleLight,
        child: Row(
          children: [
            if (ResponsiveLayout.isComputer(context))
              Container(
                margin: const EdgeInsets.all(Constants.kPadding),
                height: double.infinity,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      offset: Offset(0, 0),
                      spreadRadius: 1,
                      blurRadius: 10,
                    ),
                  ],
                  shape: BoxShape.circle,
                ),
                child: const CircleAvatar(
                  backgroundColor: Colors.pink,
                  radius: 30,
                  child: FlutterLogo(
                    size: 40,
                  ),
                ),
              )
            else
              IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  iconSize: 30,
                  color: Colors.white,
                  icon: const Icon(Icons.menu)),
            const SizedBox(
              width: Constants.kPadding,
            ),
            Spacer(),
            if (ResponsiveLayout.isComputer(context))
              ...List.generate(
                _buttonNames.length,
                (index) => TextButton(
                  onPressed: () {
                    setState(() {
                      _currentSelectedButton = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(Constants.kPadding * 2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          _buttonNames[index],
                          style: TextStyle(
                            color: _currentSelectedButton == index
                                ? Colors.white
                                : Colors.white70,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(Constants.kPadding / 2),
                          width: 60,
                          height: 2,
                          decoration: BoxDecoration(
                              gradient: _currentSelectedButton == index
                                  ? const LinearGradient(
                                      colors: [
                                        Constants.redDark,
                                        Constants.orangeDark,
                                      ],
                                    )
                                  : null),
                        )
                      ],
                    ),
                  ),
                ),
              )
            else
              Padding(
                padding: const EdgeInsets.all(Constants.kPadding * 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      _buttonNames[_currentSelectedButton],
                      style: const TextStyle(color: Colors.white),
                    ),
                    Container(
                      margin: const EdgeInsets.all(Constants.kPadding / 2),
                      width: 60,
                      height: 2,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                        colors: [
                          Constants.redDark,
                          Constants.orangeDark,
                        ],
                      )),
                    ),
                  ],
                ),
              ),
            Spacer(),
            IconButton(
              color: Colors.white,
              iconSize: 30,
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            Stack(
              children: [
                IconButton(
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_none_outlined),
                ),
                const Positioned(
                  child: CircleAvatar(
                      backgroundColor: Colors.pink,
                      radius: 8,
                      child: Text(
                        "3",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      )),
                ),
              ],
            ),
          ],
        ));
  }
}
