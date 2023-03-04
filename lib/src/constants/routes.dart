import 'package:ausum_app/src/screens/display_screen.dart';
import 'package:ausum_app/src/screens/head_screen.dart';

import 'package:ausum_app/src/widgets/head_screen/add_controller.dart';
import 'package:ausum_app/src/widgets/head_screen/add_gate.dart';
import 'package:flutter/material.dart';

var route = <String, WidgetBuilder>{
  '/': (context) => HeadScreen(),
  '/display_screen': (context) => DisplayScreen(),
  '/add_gate': (context) => AddGate(),
  '/add_controller': (context) => AddController(),
};
