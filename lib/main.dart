import 'package:adminpanel/constants.dart';
import 'package:adminpanel/widget_tree.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dash",
      theme: ThemeData(
          scaffoldBackgroundColor: Constants.purpleDark,
          canvasColor: Constants.purpleLight,
          // pageTransitionsTheme: PageTransitionsTheme(builders: {
          //   TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          //   TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          // }),
          primaryColor: Colors.blue),
      home: WidgetTree(),
    );
  }
}
