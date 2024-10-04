import 'package:flutter/material.dart';
import 'package:todoandtimepicker/datepicker.dart';
import 'package:todoandtimepicker/switchexample.dart';
import 'package:todoandtimepicker/timepicking.dart';
import 'package:todoandtimepicker/todolist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:   Switchexample (),
    );
  }
}
      