import 'package:flutter/material.dart';

class HousecleaningPage extends StatefulWidget {
  const HousecleaningPage({super.key});

  @override
  State<HousecleaningPage> createState() => _ElectricianPageState();
}

class _ElectricianPageState extends State<HousecleaningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 30,
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            'House Cleaning',
            style: TextStyle(
              color: Colors.orangeAccent,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}