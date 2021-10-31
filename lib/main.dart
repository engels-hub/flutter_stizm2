import 'package:flutter/material.dart';
import 'package:stizm2/page/error.dart';
import 'package:stizm2/page/home.dart';

void main() => runApp(MaterialApp(
 routes: {
      '/': (context) => const Home(),
      '/home': (context) => const Home(),
      '/error': (context) => const Error()
 },
  ));



