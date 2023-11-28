import 'package:flutter/material.dart';
import './coustomIcon.dart';
import 'package:flutter01/pages/tabs.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(primaryColor: Colors.amber.shade600),
      home: const Tabs()));
}
