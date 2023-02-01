// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_import, implementation_imports

import 'package:flutter/material.dart';
import 'package:messanger_chat/messanger_screen.dart';
import 'package:flutter/src/widgets/container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Messanger(),
    );
  }
}
