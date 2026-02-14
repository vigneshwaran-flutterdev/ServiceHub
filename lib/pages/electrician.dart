import 'package:flutter/material.dart';

class ElectricianPage extends StatefulWidget {
  const ElectricianPage({super.key});

  @override
  State<ElectricianPage> createState() => _ElectricianPageState();
}

class _ElectricianPageState extends State<ElectricianPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 30,
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            'Electrician',
            style: TextStyle(
              color: Colors.orangeAccent,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 60,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                border: BoxBorder.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text('Alex'),
            ),
          ),
        ],
      ),
    );
  }
}
