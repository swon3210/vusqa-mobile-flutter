import 'package:flutter/material.dart';
import 'package:vusqa_application/pages/loading.dart';
import 'package:vusqa_application/pages/home.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home()
  }
));

