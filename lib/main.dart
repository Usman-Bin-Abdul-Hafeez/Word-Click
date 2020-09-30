import 'package:flutter/material.dart';
import 'package:world_time_app/Pages/Home.dart';
import 'package:world_time_app/Pages/Loading.dart';
import 'package:world_time_app/Pages/Location.dart';

void main() => runApp(MaterialApp(
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => Location(),
  },
));
