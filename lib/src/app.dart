import 'package:ausum_app/src/constants/routes.dart';
import 'package:ausum_app/src/screens/display_screen.dart';
import 'package:ausum_app/src/screens/head_screen.dart';
import 'package:ausum_app/src/screens/login_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: route,
    );
  }
}
