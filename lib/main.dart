import 'package:flutter/material.dart';
import 'package:servicehub/pages/Signup.dart';
import 'package:servicehub/pages/firstscreen.dart';
import 'package:servicehub/pages/login.dart';
import 'package:servicehub/pages/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Profile(),
    );
  }
}
