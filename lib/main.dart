import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

import 'home_page.dart';

void main() {
  TorchController().initialize();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flash Light',
      home: HomePage(),
    );
  }
}
