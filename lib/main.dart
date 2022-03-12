import 'package:burmethon_app/screens/Home.dart';
import 'package:burmethon_app/shared/ThemeBrumaire.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brumaire app',
      theme: ThemeBrumaire.getTheme(),
      initialRoute: '/',
      // onGenerateRoute: RouteGenerator.generateRoute,
      home: Home(),
    );
  }
}